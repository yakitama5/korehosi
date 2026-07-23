import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:infrastructure_firebase/src/common/enum/remote_configs.dart';
import 'package:infrastructure_firebase/src/common/repository/firebase_app_version_repository.dart';
import 'package:infrastructure_firebase/src/common/state/remote_config_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:version/version.dart';

final Provider<FirebaseAppVersionRepository> _repositoryProvider = Provider(
  FirebaseAppVersionRepository.new,
);

void main() {
  test('watchRemoteConfigValue emits initial and activated updates', () async {
    final client = _FakeRemoteConfigClient(
      strings: {RemoteConfigs.latestAppVersion.key: '1.0.0'},
    );
    addTearDown(client.dispose);
    final errors = <Object>[];
    final stream = watchRemoteConfigValue(
      client: client,
      key: RemoteConfigs.latestAppVersion.key,
      read: () => client.getString(RemoteConfigs.latestAppVersion.key),
      reportError: (error, stackTrace) async => errors.add(error),
    );

    final values = <String>[];
    final subscription = stream.listen(values.add);
    addTearDown(subscription.cancel);
    await _eventLoop();

    client.strings[RemoteConfigs.latestAppVersion.key] = '1.1.0';
    client.addUpdate(RemoteConfigs.latestAppVersion.key);
    await _eventLoop();

    expect(values, ['1.0.0', '1.1.0']);
    expect(client.activateCount, 1);
    expect(errors, isEmpty);
  });

  test('update errors are reported without terminating the stream', () async {
    final client = _FakeRemoteConfigClient(
      strings: {RemoteConfigs.latestAppVersion.key: '1.0.0'},
    );
    addTearDown(client.dispose);
    final errors = <Object>[];
    final stream = watchRemoteConfigValue(
      client: client,
      key: RemoteConfigs.latestAppVersion.key,
      read: () => client.getString(RemoteConfigs.latestAppVersion.key),
      reportError: (error, stackTrace) async => errors.add(error),
    );

    final values = <String>[];
    final subscription = stream.listen(values.add);
    addTearDown(subscription.cancel);
    await _eventLoop();

    client.addError(StateError('offline'));
    await _eventLoop();
    client.strings[RemoteConfigs.latestAppVersion.key] = '1.2.0';
    client.addUpdate(RemoteConfigs.latestAppVersion.key);
    await _eventLoop();

    expect(errors, hasLength(1));
    expect(values, ['1.0.0', '1.2.0']);
  });

  test('reporter failures do not terminate realtime updates', () async {
    final client = _FakeRemoteConfigClient(
      strings: {RemoteConfigs.latestAppVersion.key: '1.0.0'},
    );
    addTearDown(client.dispose);
    final stream = watchRemoteConfigValue(
      client: client,
      key: RemoteConfigs.latestAppVersion.key,
      read: () => client.getString(RemoteConfigs.latestAppVersion.key),
      reportError: (error, stackTrace) async => throw StateError('reporting'),
    );

    final values = <String>[];
    final subscription = stream.listen(values.add);
    addTearDown(subscription.cancel);
    await _eventLoop();

    client.addError(StateError('offline'));
    await _eventLoop();
    client.strings[RemoteConfigs.latestAppVersion.key] = '1.2.0';
    client.addUpdate(RemoteConfigs.latestAppVersion.key);
    await _eventLoop();

    expect(values, ['1.0.0', '1.2.0']);
  });

  test('cancelling the value stream cancels the update subscription', () async {
    final client = _FakeRemoteConfigClient(
      strings: {RemoteConfigs.latestAppVersion.key: '1.0.0'},
    );
    addTearDown(client.dispose);
    final stream = watchRemoteConfigValue(
      client: client,
      key: RemoteConfigs.latestAppVersion.key,
      read: () => client.getString(RemoteConfigs.latestAppVersion.key),
      reportError: (error, stackTrace) async {},
    );

    final subscription = stream.listen((_) {});
    await _eventLoop();
    await subscription.cancel();

    expect(client.cancelled, isTrue);
  });

  test(
    'invalid versions fall back and valid updates remain realtime',
    () async {
      final client = _FakeRemoteConfigClient(
        strings: {RemoteConfigs.latestAppVersion.key: 'invalid'},
      );
      addTearDown(client.dispose);
      final errors = <Object>[];
      final container = ProviderContainer(
        overrides: [
          remoteConfigProvider.overrideWith((ref) => client),
          remoteConfigErrorReporterProvider.overrideWithValue(
            (error, stackTrace) async => errors.add(error),
          ),
        ],
      );
      addTearDown(container.dispose);
      final repository = container.read(_repositoryProvider);

      final valuesFuture = repository.listenLatestAppVersion().take(2).toList();
      await _eventLoop();

      client.strings[RemoteConfigs.latestAppVersion.key] = '2.3.4';
      client.addUpdate(RemoteConfigs.latestAppVersion.key);
      await _eventLoop();

      expect(await valuesFuture, [Version(0, 0, 0), Version(2, 3, 4)]);
      expect(errors.single, isA<FormatException>());
    },
  );

  test('invalid versions fall back when the reporter also fails', () async {
    final client = _FakeRemoteConfigClient(
      strings: {RemoteConfigs.latestAppVersion.key: 'invalid'},
    );
    addTearDown(client.dispose);
    final container = ProviderContainer(
      overrides: [
        remoteConfigProvider.overrideWith((ref) => client),
        remoteConfigErrorReporterProvider.overrideWithValue(
          (error, stackTrace) async => throw StateError('reporting'),
        ),
      ],
    );
    addTearDown(container.dispose);

    final version = await container
        .read(_repositoryProvider)
        .listenLatestAppVersion()
        .first;

    expect(version, Version(0, 0, 0));
  });
}

Future<void> _eventLoop() => Future<void>.delayed(Duration.zero);

class _FakeRemoteConfigClient implements RemoteConfigClient {
  _FakeRemoteConfigClient({Map<String, String>? strings})
    : strings = strings ?? {} {
    _updates = StreamController<Set<String>>(onCancel: () => cancelled = true);
  }

  final Map<String, String> strings;
  late final StreamController<Set<String>> _updates;
  int activateCount = 0;
  bool cancelled = false;

  void addUpdate(String key) => _updates.add({key});

  void addError(Object error) => _updates.addError(error, StackTrace.current);

  Future<void> dispose() => _updates.close();

  @override
  Future<bool> activate() async {
    activateCount++;
    return true;
  }

  @override
  bool getBool(String key) => false;

  @override
  String getString(String key) => strings[key] ?? '';

  @override
  Stream<Set<String>> get updatedKeys => _updates.stream;
}
