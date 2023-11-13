import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_link.freezed.dart';

/// グループの共有リンク
@freezed
class ShareLink with _$ShareLink {
  const factory ShareLink({
    required String id,
    required String groupId,
    required int validDays,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ShareLink;
}
