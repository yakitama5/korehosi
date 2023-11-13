import 'package:freezed_annotation/freezed_annotation.dart';

import 'group.dart';

part 'group_tile.freezed.dart';

/// グループを参照する際のViewModel
@freezed
class GroupTile with _$GroupTile {
  const factory GroupTile({
    required Group group,
    String? ownerName,
    required bool isOwner,
    required bool current,
  }) = _GroupTile;
}
