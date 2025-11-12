import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_firebase/src/item/model/firestore_purchase_model.dart';
import 'package:infrastructure_firebase/src/item/state/firestore_item_provider.dart';
import 'package:infrastructure_firebase/src/item/state/firestore_purchase_provider.dart';
import 'package:packages_domain/analyze.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/user.dart';

/// Firebaseを利用したリポジトリの実装
class FirebaseAnalyzeRepository implements AnalyzeRepository {
  const FirebaseAnalyzeRepository(this.ref);

  final Ref ref;

  @override
  Future<ItemBuyedRate> exploreBuyedRate({
    required GroupId groupId,
    required AgeGroup ageGroup,
    required ItemAnalyzeQuery query,
  }) async {
    // コレクション定義
    final itemCol = ref.read(itemCollectionRefProvider(groupId: groupId));
    final purchaseQuery = createAnalyzeQuery(groupId: groupId, query: query);

    // 各件数の取得
    final itemCount = await itemCol.count().get().then((doc) => doc.count);
    final buyedItemCount =
        await purchaseQuery
            .where('sentAt', isNull: false)
            .count()
            .get()
            .then((doc) => doc.count) ??
        0;

    // 購入率を計算
    final buyedRate = itemCount == null ? 0.0 : buyedItemCount / itemCount;

    return ItemBuyedRate(
      buyedItemCount: buyedItemCount,
      itemCount: itemCount ?? 0,
      buyedRate: buyedRate,
    );
  }

  @override
  Future<MonthlyTotalsPurchases> exploreMonthlyTotals({
    required GroupId groupId,
    required AgeGroup ageGroup,
    required YearMonthRange range,
    required ItemAnalyzeQuery query,
  }) async {
    // クエリー定義
    final allTimeTotalQuery = createAnalyzeQuery(
      groupId: groupId,
      query: query,
    );

    // 全期間の購入金額の合計を先に取得
    final allTimeTotalPrice = await allTimeTotalQuery
        .aggregate(sum('price'))
        .get()
        .then((res) => res.getSum('price'));

    // 月初めに正規化
    var currentDate = DateTime(range.from.year, range.from.month);
    final lastDate = DateTime(range.to.year, range.to.month);

    // 月別の合計金額の取得
    final totals = <MonthlyTotals>[];
    while (currentDate.isBefore(lastDate) ||
        currentDate.isAtSameMomentAs(lastDate)) {
      // 単月の結果を取得
      final from = Timestamp.fromDate(currentDate);
      final to = Timestamp.fromDate(
        DateTime(
          currentDate.year,
          currentDate.month + 1,
        ).add(const Duration(microseconds: -1)),
      );
      final price = await allTimeTotalQuery
          .where('sentAt', isGreaterThanOrEqualTo: from)
          .where('sentAt', isLessThanOrEqualTo: to)
          .aggregate(sum('price'))
          .get()
          .then((res) => res.getSum('price'));

      // 結果を格納
      totals.add(
        MonthlyTotals(
          yearMonth: YearMonth(
            year: currentDate.year,
            month: currentDate.month,
          ),
          totalPrice: (price ?? 0.0).toInt(),
        ),
      );

      // 次の月へ進める
      currentDate = DateTime(currentDate.year, currentDate.month + 1);
    }

    return MonthlyTotalsPurchases(
      monthlyTotals: totals,
      allTimeTotalPrice: (allTimeTotalPrice ?? 0.0).toInt(),
    );
  }

  Query<FirestorePurchaseModel> createAnalyzeQuery({
    required GroupId groupId,
    required ItemAnalyzeQuery query,
  }) {
    final collection = ref.read(
      purchaseCollectionRefProvider(groupId: groupId),
    );

    Query<FirestorePurchaseModel> firestoreQuery = collection;

    // かった人の絞り込み条件
    if (query.buyerName?.isNotEmpty == true) {
      firestoreQuery = firestoreQuery.where(
        'buyerName',
        isEqualTo: query.buyerName,
      );
    }

    // 欲しい人の絞り込み条件
    if (query.wanterName?.isNotEmpty == true) {
      firestoreQuery = firestoreQuery.where(
        'wanterName',
        isEqualTo: query.wanterName,
      );
    }

    return firestoreQuery;
  }
}
