import 'package:firebase_storage/firebase_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_storage.g.dart';

/// Firebase Storage
/// テスト時にDIすることを考慮して、Providerとして定義
@Riverpod(keepAlive: true)
FirebaseStorage firebaseStorage(Ref ref) => FirebaseStorage.instance;
