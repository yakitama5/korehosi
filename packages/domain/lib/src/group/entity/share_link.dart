import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/group.dart';

part 'share_link.freezed.dart';

extension type ShareLinkId(String value) {}

/// グループの共有リンク
@freezed
abstract class ShareLink with _$ShareLink {
  const factory ShareLink({
    required ShareLinkId id,
    required GroupId groupId,
    required int validDays,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ShareLink;
}
