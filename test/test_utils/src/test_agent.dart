import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:family_wish_list/app/application/state/initial_deep_link_provider.dart';
import 'package:family_wish_list/app/application/state/initial_location_provider.dart';
import 'package:family_wish_list/app/application/state/locale_provider.dart';
import 'package:family_wish_list/app/domain/group/entity/group.dart';
import 'package:family_wish_list/app/domain/service/analytics_service.dart';
import 'package:family_wish_list/app/domain/user/entity/user.dart';
import 'package:family_wish_list/app/domain/user/value_object/age_group.dart';
import 'package:family_wish_list/app/infrastructure/firebase/authentication/state/firebase_auth.dart';
import 'package:family_wish_list/app/infrastructure/firebase/firestore/extension/collection_reference.dart';
import 'package:family_wish_list/app/infrastructure/firebase/firestore/state/firestore.dart';
import 'package:family_wish_list/app/infrastructure/firebase/storage/state/firebase_storage.dart';
import 'package:family_wish_list/app/infrastructure/google/state/google_sign_in.dart';
import 'package:family_wish_list/app/presentation/app.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:firebase_storage_mocks/firebase_storage_mocks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_ja.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in_mocks/google_sign_in_mocks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app/core/analytics/src/mock_analytics_service.dart';

typedef FirestoreBuilder = Future<FakeFirebaseFirestore> Function(
  FakeFirebaseFirestore firestore,
);

class TestAgent {
  static const deviceSize = Size(412, 844);
  late final defaultOverrides = <Override>[
    // Firebase
    firestoreProvider.overrideWith((ref) => FakeFirebaseFirestore()),
    firebaseAuthProvider.overrideWith((ref) => MockFirebaseAuth()),
    googleSignInProvider.overrideWith((ref) => MockGoogleSignIn()),
    firebaseStorageProvider.overrideWith((ref) => MockFirebaseStorage()),
    analyticsServiceProvider.overrideWith(MockAnalyticsService.new),
    // Other
    l10nProvider.overrideWith((ref) => l10n),
    initialDeepLinkProvider.overrideWith((ref) => null),
    initialLocationProvider.overrideWith((ref) => null),
  ];
  List<Override>? addOverrides;

  final l10n = L10nJa();

  final mockUserModel = User(
    id: 'Adult - id',
    name: 'Adult',
    ageGroup: AgeGroup.adult,
    joinGroupIds: ['Group - id'],
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  final mockGroupModel = Group(
    id: 'Group - id',
    name: 'Adult Group',
    joinUids: ['Adult - id'],
    ownerUid: 'Adult - id',
    premium: false,
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  /// 開始処理
  Future<void> setUp({
    List<Override>? overrides,
  }) async {
    TestWidgetsFlutterBinding.ensureInitialized();

    // SharedPreferences
    SharedPreferences.setMockInitialValues({});

    addOverrides = overrides;
  }

  /// 開始処理(サインイン状態)
  Future<void> setUpSignIned({
    List<Override>? overrides,
    FirestoreBuilder? firestoreSetup,
  }) async {
    // 認証済
    final authUser = MockUser(uid: mockUserModel.id, isAnonymous: true);
    final auth = MockFirebaseAuth(mockUser: authUser, signedIn: true);

    // ユーザー登録済
    final templateStore = FakeFirebaseFirestore();
    await templateStore
        .usersRef()
        .doc(mockUserModel.id)
        .set(mockUserModel.toJson());
    await templateStore
        .groupsRef()
        .doc(mockGroupModel.id)
        .set(mockGroupModel.toJson());

    // 追加のセットアップ
    final firestore = firestoreSetup != null
        ? await firestoreSetup(templateStore)
        : templateStore;

    return setUp(
      overrides: [
        firebaseAuthProvider.overrideWith((ref) => auth),
        firestoreProvider.overrideWith((ref) => firestore),
        ...?overrides,
      ],
    );
  }

  /// 終了処理
  Future<void> tearDown() async {}

  Widget mockApp({
    String? location,
    List<Override>? overrides,
  }) {
    return ProviderScope(
      overrides: _generateOverrides(overrides, location),
      child: const App(),
    );
  }

  List<Override> _generateOverrides(
    List<Override>? overrides,
    String? location,
  ) =>
      [
        ...defaultOverrides,
        initialLocationProvider.overrideWith((ref) => location),
        ...?addOverrides,
        ...?overrides,
      ];
}
