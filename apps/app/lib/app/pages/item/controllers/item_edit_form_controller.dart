import 'package:packages_application/item.dart';
import 'package:packages_domain/item.dart';

/// 編集画面の初期値。Widgetのライフサイクルからフォーム生成を分離する。
class ItemEditFormDraft {
  const ItemEditFormDraft({
    required this.model,
    required this.wishDate,
    required this.urlThumbnails,
  });

  factory ItemEditFormDraft.fromItem(Item? item) => ItemEditFormDraft(
    model: ItemFormModel(
      name: item?.name,
      wishRank: item?.wishRank ?? 0,
      wanterName: item?.wanterName,
      wishSeason: item?.wishSeason,
      memo: item?.memo,
      urls: (item?.urls?.isEmpty ?? true) ? [''] : item?.urls,
      images: [
        ...item?.images?.map(
              (image) => SelectedImageModel(savedImage: image),
            ) ??
            const <SelectedImageModel>[],
        null,
      ],
    ),
    wishDate: item?.wishDate,
    urlThumbnails: {...?item?.urlThumbnails},
  );

  final ItemFormModel model;
  final DateTime? wishDate;
  final Map<String, String?> urlThumbnails;
}

/// 保存処理へ渡す、検証済みフォーム値。
class ItemEditSubmission {
  const ItemEditSubmission({
    required this.name,
    required this.wanterName,
    required this.wishRank,
    required this.wishSeason,
    required this.wishDate,
    required this.urls,
    required this.urlThumbnails,
    required this.memo,
    required this.selectedImages,
  });

  factory ItemEditSubmission.fromForm({
    required ItemFormModelForm form,
    required DateTime? wishDate,
    required Map<String, String?> urlThumbnails,
  }) {
    final urls = form.urlsControl.controls
        .map((control) => control.value?.trim())
        .whereType<String>()
        .where((url) => url.isNotEmpty)
        .toList();
    return ItemEditSubmission(
      name: form.nameControl.value!,
      wanterName: form.wanterNameControl.value,
      wishRank: form.wishRankControl.value!,
      wishSeason: form.wishSeasonControl.value,
      wishDate: wishDate,
      urls: urls,
      urlThumbnails: Map.fromEntries(
        urlThumbnails.entries.where((entry) => urls.contains(entry.key)),
      ),
      memo: form.memoControl.value,
      selectedImages: form.imagesControl.controls
          .map((control) => control.value)
          .nonNulls
          .toList(),
    );
  }

  final String name;
  final String? wanterName;
  final double wishRank;
  final String? wishSeason;
  final DateTime? wishDate;
  final List<String> urls;
  final Map<String, String?> urlThumbnails;
  final String? memo;
  final List<SelectedImageModel> selectedImages;
}

typedef AddItemEdit = Future<void> Function(ItemEditSubmission submission);
typedef UpdateItemEdit =
    Future<void> Function(
      ItemId itemId,
      ItemEditSubmission submission,
    );

/// 作成・編集の分岐をWidgetから分離する保存Controller。
class ItemEditFormController {
  const ItemEditFormController({required this.add, required this.update});

  final AddItemEdit add;
  final UpdateItemEdit update;

  Future<void> save({
    required ItemId? itemId,
    required ItemEditSubmission submission,
  }) => itemId == null ? add(submission) : update(itemId, submission);
}
