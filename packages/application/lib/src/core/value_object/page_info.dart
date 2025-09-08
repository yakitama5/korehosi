class PageInfo<T> {
  const PageInfo({required this.items, required this.totalCount});

  PageInfo.empty() : items = List.empty(), totalCount = 0;

  final List<T> items;
  final int totalCount;
}
