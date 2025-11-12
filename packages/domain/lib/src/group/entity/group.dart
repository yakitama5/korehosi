import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/user.dart';

part 'group.freezed.dart';

extension type GroupId(String value) {}

/// グループ
@freezed
abstract class Group with _$Group {
  const factory Group({
    required GroupId id,
    required String name,
    required List<UserId> joinUids,
    required UserId ownerUid,
    int? itemCount,
    required bool premium,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Group;
}
