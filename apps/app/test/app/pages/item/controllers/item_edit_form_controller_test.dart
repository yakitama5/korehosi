import 'package:flutter_app/app/pages/item/controllers/item_edit_form_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:packages_application/item.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/item.dart';

void main() {
  test('new item draft contains one empty URL and image picker', () {
    final draft = ItemEditFormDraft.fromItem(null);

    expect(draft.model.urls, ['']);
    expect(draft.model.images, [null]);
    expect(draft.model.wishRank, 0);
    expect(draft.urlThumbnails, isEmpty);
  });

  test('edit draft maps all persisted item values', () {
    final item = _item();
    final draft = ItemEditFormDraft.fromItem(item);

    expect(draft.model.name, item.name);
    expect(draft.model.wanterName, item.wanterName);
    expect(draft.model.wishRank, item.wishRank);
    expect(draft.model.wishSeason, item.wishSeason);
    expect(draft.model.memo, item.memo);
    expect(draft.model.urls, item.urls);
    expect(draft.model.images, hasLength(2));
    expect(draft.model.images!.first!.savedImage, item.images!.first);
    expect(draft.model.images!.last, isNull);
    expect(draft.wishDate, item.wishDate);
    expect(draft.urlThumbnails, item.urlThumbnails);
  });

  test('required inputs are invalid without a name', () {
    final form = ItemFormModelForm(
      ItemFormModelForm.formElements(
        const ItemFormModel(wishRank: 1, urls: ['']),
      ),
      null,
    );
    addTearDown(form.form.dispose);

    expect(form.form.invalid, isTrue);
    expect(form.nameControl.invalid, isTrue);
  });

  test('submission keeps thumbnails only for current URLs', () {
    final form = ItemFormModelForm(
      ItemFormModelForm.formElements(
        const ItemFormModel(
          name: 'name',
          wishRank: 3,
          urls: ['https://kept.example'],
          images: [],
        ),
      ),
      null,
    );
    addTearDown(form.form.dispose);

    final submission = ItemEditSubmission.fromForm(
      form: form,
      wishDate: DateTime(2026, 7, 19),
      urlThumbnails: const {
        'https://kept.example': 'https://image.example/kept.png',
        'https://removed.example': 'https://image.example/removed.png',
      },
    );

    expect(submission.name, 'name');
    expect(submission.urls, ['https://kept.example']);
    expect(submission.urlThumbnails, {
      'https://kept.example': 'https://image.example/kept.png',
    });
  });

  test('submission removes blank URLs and trims entered URLs', () {
    final form = ItemFormModelForm(
      ItemFormModelForm.formElements(
        const ItemFormModel(
          name: 'name',
          wishRank: 1,
          urls: ['', '  ', ' https://item.example '],
          images: [],
        ),
      ),
      null,
    );
    addTearDown(form.form.dispose);

    final submission = ItemEditSubmission.fromForm(
      form: form,
      wishDate: null,
      urlThumbnails: const {},
    );

    expect(submission.urls, ['https://item.example']);
  });

  test('save uses add for a new item', () async {
    ItemEditSubmission? added;
    var updateCalled = false;
    final controller = ItemEditFormController(
      add: (submission) async => added = submission,
      update: (itemId, submission) async => updateCalled = true,
    );
    final submission = _submission();

    await controller.save(itemId: null, submission: submission);

    expect(added, same(submission));
    expect(updateCalled, isFalse);
  });

  test('save uses update for an existing item', () async {
    var addCalled = false;
    ItemId? updatedId;
    final controller = ItemEditFormController(
      add: (submission) async => addCalled = true,
      update: (itemId, submission) async => updatedId = itemId,
    );
    final itemId = ItemId('item');

    await controller.save(itemId: itemId, submission: _submission());

    expect(addCalled, isFalse);
    expect(updatedId, itemId);
  });

  test('save propagates failures so the page does not pop', () async {
    final controller = ItemEditFormController(
      add: (submission) async => throw StateError('save failed'),
      update: (itemId, submission) async {},
    );

    await expectLater(
      controller.save(itemId: null, submission: _submission()),
      throwsStateError,
    );
  });
}

ItemEditSubmission _submission() => const ItemEditSubmission(
  name: 'name',
  wanterName: null,
  wishRank: 1,
  wishSeason: null,
  wishDate: null,
  urls: [],
  urlThumbnails: {},
  memo: null,
  selectedImages: [],
);

Item _item() => Item(
  id: ItemId('item'),
  images: [
    ItemImage(id: ImageId('image'), url: 'https://image.example/item.png'),
  ],
  name: 'name',
  wanterName: 'wanter',
  wishRank: 4,
  wishSeason: 'birthday',
  wishDate: DateTime(2026, 8),
  urls: const ['https://item.example'],
  urlThumbnails: const {
    'https://item.example': 'https://image.example/thumbnail.png',
  },
  memo: 'memo',
  purchaseStatus: PurchaseStatus.notPurchased,
  createdAt: DateTime(2026),
  updatedAt: DateTime(2026),
);
