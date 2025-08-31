enum SortOrder {
  asc,
  desc;

  SortOrder get reverse => switch (this) {
        SortOrder.asc => SortOrder.desc,
        SortOrder.desc => SortOrder.asc,
      };
}
