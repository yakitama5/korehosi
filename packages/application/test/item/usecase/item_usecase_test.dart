import 'dart:typed_data';

import 'package:cross_file/cross_file.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:packages_application/group.dart';
import 'package:packages_application/item.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/item.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod/riverpod.dart';

void main() {
  final sourceGroup = _group('source');
  final targetGroup = _group('target');
  final item = Item(
    id: ItemId('item'),
    images: [
      ItemImage(id: ImageId('image'), url: 'https://example.com/image.png'),
    ],
    name: 'item name',
    wanterName: 'wanter',
    wishRank: 4.5,
    wishSeason: 'birthday',
    wishDate: DateTime(2026, 8),
    urls: const ['https://example.com'],
    urlThumbnails: const {
      'https://example.com': 'https://example.com/thumbnail.png',
    },
    memo: 'memo',
    purchaseStatus: PurchaseStatus.purchased,
    createdAt: DateTime(2026),
    updatedAt: DateTime(2026),
  );

  test(
    'copyToGroup copies every transferable field without deleting source',
    () async {
      final repository = _FakeItemRepository();
      final container = _container(
        sourceGroup: sourceGroup,
        repository: repository,
      );
      addTearDown(container.dispose);

      await container
          .read(itemUsecaseProvider)
          .copyToGroup(item: item, targetGroup: targetGroup);

      expect(repository.addedGroupId, targetGroup.id);
      expect(repository.uploadImages, hasLength(1));
      expect(repository.name, item.name);
      expect(repository.wanterName, item.wanterName);
      expect(repository.wishRank, item.wishRank);
      expect(repository.wishSeason, item.wishSeason);
      expect(repository.wishDate, item.wishDate);
      expect(repository.urls, item.urls);
      expect(repository.urlThumbnails, item.urlThumbnails);
      expect(repository.memo, item.memo);
      expect(repository.deletedItemId, isNull);
    },
  );

  test('moveToGroup deletes source only after copy succeeds', () async {
    final events = <String>[];
    final repository = _FakeItemRepository(events: events);
    final container = _container(
      sourceGroup: sourceGroup,
      repository: repository,
    );
    addTearDown(container.dispose);

    await container
        .read(itemUsecaseProvider)
        .moveToGroup(item: item, targetGroup: targetGroup);

    expect(events, ['add', 'delete']);
    expect(repository.deletedGroupId, sourceGroup.id);
    expect(repository.deletedItemId, item.id);
  });

  test('moveToGroup keeps source when copy fails', () async {
    final repository = _FakeItemRepository(failToAdd: true);
    final container = _container(
      sourceGroup: sourceGroup,
      repository: repository,
    );
    addTearDown(container.dispose);

    await expectLater(
      container
          .read(itemUsecaseProvider)
          .moveToGroup(item: item, targetGroup: targetGroup),
      throwsException,
    );

    expect(repository.deletedItemId, isNull);
  });
}

ProviderContainer _container({
  required Group sourceGroup,
  required _FakeItemRepository repository,
}) => ProviderContainer(
  overrides: [
    currentGroupProvider.overrideWith((ref) => sourceGroup),
    itemRepositoryProvider.overrideWithValue(repository),
    storageServiceProvider.overrideWithValue(const _FakeStorageService()),
  ],
);

Group _group(String id) => Group(
  id: GroupId(id),
  name: id,
  joinUids: const [],
  ownerUid: UserId('owner'),
  itemCount: 0,
  premium: false,
  createdAt: DateTime(2026),
  updatedAt: DateTime(2026),
);

class _FakeStorageService implements StorageService {
  const _FakeStorageService();

  @override
  Future<XFile> downloadImage(ImageId id) async =>
      XFile.fromData(Uint8List.fromList([1, 2, 3]), name: id.value);

  @override
  Future<String> downloadUrl(ImageId id) async => 'https://example.com';

  @override
  Future<ImageId> uploadImage(ImageId id, XFile xfile) async => id;
}

class _FakeItemRepository implements ItemRepository {
  _FakeItemRepository({this.events, this.failToAdd = false});

  final List<String>? events;
  final bool failToAdd;

  GroupId? addedGroupId;
  List<XFile>? uploadImages;
  String? name;
  String? wanterName;
  double? wishRank;
  String? wishSeason;
  DateTime? wishDate;
  List<String>? urls;
  Map<String, String?>? urlThumbnails;
  String? memo;
  GroupId? deletedGroupId;
  ItemId? deletedItemId;

  @override
  Future<Item> add({
    required GroupId groupId,
    List<XFile>? uploadImages,
    required String name,
    String? wanterName,
    required double wishRank,
    String? wishSeason,
    DateTime? wishDate,
    List<String>? urls,
    Map<String, String?>? urlThumbnails,
    String? memo,
  }) async {
    events?.add('add');
    if (failToAdd) {
      throw Exception('copy failed');
    }
    addedGroupId = groupId;
    this.uploadImages = uploadImages;
    this.name = name;
    this.wanterName = wanterName;
    this.wishRank = wishRank;
    this.wishSeason = wishSeason;
    this.wishDate = wishDate;
    this.urls = urls;
    this.urlThumbnails = urlThumbnails;
    this.memo = memo;
    return _item;
  }

  @override
  Future<void> delete({
    required GroupId groupId,
    required ItemId itemId,
  }) async {
    events?.add('delete');
    deletedGroupId = groupId;
    deletedItemId = itemId;
  }

  @override
  Future<Item?> fetchByGroupIdAndItemId({
    required GroupId groupId,
    required ItemId itemId,
    required AgeGroup ageGroup,
  }) async => null;

  @override
  Future<List<String>> fetchWanterNameHistories({
    required GroupId groupId,
  }) async => [];

  @override
  Future<PageInfo<Item>> searchItems({
    required int page,
    required int pageSize,
    required GroupId groupId,
    required AgeGroup ageGroup,
    required ItemsSearchQuery query,
  }) async => const PageInfo(items: [], totalCount: 0);

  @override
  Future<void> update({
    required GroupId groupId,
    required ItemId itemId,
    List<ItemImage>? images,
    List<XFile>? uploadImages,
    required String name,
    String? wanterName,
    required double wishRank,
    String? wishSeason,
    DateTime? wishDate,
    List<String>? urls,
    Map<String, String?>? urlThumbnails,
    String? memo,
  }) async {}
}

final _item = Item(
  id: ItemId('copied'),
  name: 'copied',
  wishRank: 1,
  purchaseStatus: PurchaseStatus.notPurchased,
  createdAt: DateTime(2026),
  updatedAt: DateTime(2026),
);
