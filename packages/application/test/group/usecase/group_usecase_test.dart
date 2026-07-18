import 'package:flutter_test/flutter_test.dart';
import 'package:packages_application/group.dart';
import 'package:packages_application/user.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/designsystem.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod/riverpod.dart';

void main() {
  final leavingGroupId = GroupId('leaving');
  final nextGroupId = GroupId('next');
  final userId = UserId('member');

  test('leave passes the authenticated user to the repository', () async {
    final repository = _FakeGroupRepository(
      groups: {
        leavingGroupId: _group(leavingGroupId, ownerId: UserId('owner')),
      },
    );
    final session = _FakeUserSessionRepository(currentGroupId: nextGroupId);
    final container = _container(
      repository: repository,
      session: session,
      user: _user(userId, [leavingGroupId, nextGroupId]),
    );
    addTearDown(container.dispose);

    await container.read(groupUsecaseProvider).leave(groupId: leavingGroupId);

    expect(repository.leftGroupId, leavingGroupId);
    expect(repository.leftUserId, userId);
    expect(session.currentGroupId, nextGroupId);
  });

  test('leave switches the current group to another joined group', () async {
    final repository = _FakeGroupRepository(
      groups: {
        leavingGroupId: _group(leavingGroupId, ownerId: UserId('owner')),
      },
    );
    final session = _FakeUserSessionRepository(currentGroupId: leavingGroupId);
    final container = _container(
      repository: repository,
      session: session,
      user: _user(userId, [leavingGroupId, nextGroupId]),
    );
    addTearDown(container.dispose);

    await container.read(groupUsecaseProvider).leave(groupId: leavingGroupId);

    expect(session.currentGroupId, nextGroupId);
  });

  test('leave clears the current group when no joined group remains', () async {
    final repository = _FakeGroupRepository(
      groups: {
        leavingGroupId: _group(leavingGroupId, ownerId: UserId('owner')),
      },
    );
    final session = _FakeUserSessionRepository(currentGroupId: leavingGroupId);
    final container = _container(
      repository: repository,
      session: session,
      user: _user(userId, [leavingGroupId]),
    );
    addTearDown(container.dispose);

    await container.read(groupUsecaseProvider).leave(groupId: leavingGroupId);

    expect(session.currentGroupId, isNull);
  });

  test('an owner cannot leave their group', () async {
    final repository = _FakeGroupRepository(
      groups: {
        leavingGroupId: _group(leavingGroupId, ownerId: userId),
      },
    );
    final session = _FakeUserSessionRepository(currentGroupId: leavingGroupId);
    final container = _container(
      repository: repository,
      session: session,
      user: _user(userId, [leavingGroupId]),
    );
    addTearDown(container.dispose);

    await expectLater(
      container.read(groupUsecaseProvider).leave(groupId: leavingGroupId),
      throwsA(
        isA<BusinessException>().having(
          (error) => error.exceptionType,
          'exceptionType',
          BusinessExceptionType.leaveGroupPolicyOwner,
        ),
      ),
    );

    expect(repository.leftGroupId, isNull);
    expect(session.currentGroupId, leavingGroupId);
  });
}

ProviderContainer _container({
  required _FakeGroupRepository repository,
  required _FakeUserSessionRepository session,
  required User user,
}) => ProviderContainer(
  overrides: [
    groupRepositoryProvider.overrideWithValue(repository),
    userSessionRepositoryProvider.overrideWithValue(session),
    authUserProvider.overrideWith((ref) => user),
  ],
);

User _user(UserId id, List<GroupId> joinGroupIds) => User(
  id: id,
  ageGroup: AgeGroup.adult,
  joinGroupIds: joinGroupIds,
  createdAt: DateTime(2026),
  updatedAt: DateTime(2026),
);

Group _group(GroupId id, {required UserId ownerId}) => Group(
  id: id,
  name: id.value,
  joinUids: const [],
  ownerUid: ownerId,
  itemCount: 0,
  premium: false,
  createdAt: DateTime(2026),
  updatedAt: DateTime(2026),
);

class _FakeGroupRepository implements GroupRepository {
  _FakeGroupRepository({required this.groups});

  final Map<GroupId, Group> groups;
  GroupId? leftGroupId;
  UserId? leftUserId;

  @override
  Stream<Group?> fetch({required GroupId groupId}) =>
      Stream.value(groups[groupId]);

  @override
  Future<void> leave({required GroupId groupId, required UserId userId}) async {
    leftGroupId = groupId;
    leftUserId = userId;
  }

  @override
  Future<void> add({
    required String name,
    required List<UserId> joinUids,
    required UserId ownerUid,
    int? itemCount,
    required bool premium,
  }) => throw UnimplementedError();

  @override
  Future<String> addShareLink({
    required GroupId groupId,
    required int validDays,
  }) => throw UnimplementedError();

  @override
  Future<void> delete({required GroupId groupId}) => throw UnimplementedError();

  @override
  Stream<ShareLink?> fetchShareLink({required ShareLinkId shareLinkId}) =>
      throw UnimplementedError();

  @override
  Future<JoinGroupErrorCode?> joinGroup({required ShareLinkId shareLinkId}) =>
      throw UnimplementedError();

  @override
  Future<void> update({required GroupId groupId, required String name}) =>
      throw UnimplementedError();
}

class _FakeUserSessionRepository implements UserSessionRepository {
  _FakeUserSessionRepository({this.currentGroupId});

  GroupId? currentGroupId;

  @override
  GroupId? fetchCurrentGroupId() => currentGroupId;

  @override
  Future<void> removeCurrentGroupId() async {
    currentGroupId = null;
  }

  @override
  Future<void> setCurrentGroupId({required GroupId groupId}) async {
    currentGroupId = groupId;
  }

  @override
  ViewLayout? fetchItemsPageViewLayout() => throw UnimplementedError();

  @override
  DateTime? fetchTokenTimestamp({required UserId userId}) =>
      throw UnimplementedError();

  @override
  Future<void> removeTokenTimestamp({
    required UserId userId,
    required DateTime dateTime,
  }) => throw UnimplementedError();

  @override
  Future<void> updateItemsPageViewLayout({required ViewLayout viewLayout}) =>
      throw UnimplementedError();

  @override
  Future<void> updateTokenTimestamp({
    required UserId userId,
    required DateTime dateTime,
  }) => throw UnimplementedError();
}
