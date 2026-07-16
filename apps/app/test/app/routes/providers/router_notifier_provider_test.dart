import 'dart:async';

import 'package:flutter_app/app/routes/src/providers/router_notifier_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/user.dart';
import 'package:packages_domain/user.dart';

void main() {
  test('notifies GoRouter when authentication status changes', () async {
    final authStatus = StreamController<AuthStatus?>();
    addTearDown(authStatus.close);
    final container = ProviderContainer(
      overrides: [
        authStatusProvider.overrideWith((ref) => authStatus.stream),
        authUserProvider.overrideWith((ref) => null),
      ],
    );
    addTearDown(container.dispose);

    final subscription = container.listen(routerProvider, (_, _) {});
    addTearDown(subscription.close);
    final notifier = container.read(routerProvider.notifier);
    await container.read(routerProvider.future);

    var notificationCount = 0;
    notifier.addListener(() => notificationCount++);

    authStatus.add(
      AuthStatus(
        userId: UserId('signed-in-user'),
        isAnonymous: false,
        linkedGoogle: true,
        linkedApple: false,
      ),
    );
    await pumpEventQueue();

    expect(notificationCount, greaterThan(0));
  });
}
