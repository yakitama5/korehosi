import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../config/items_config.dart';

/// 欲しい度フィルタ
final itemsFilterWishRankProvider =
    StateProvider<double?>((ref) => itemsConfig.defaultWishRank);
