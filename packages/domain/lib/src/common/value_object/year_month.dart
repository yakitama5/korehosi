import 'package:freezed_annotation/freezed_annotation.dart';

part 'year_month.freezed.dart';

@freezed
abstract class YearMonth with _$YearMonth {
  @Assert('year >= 1990')
  @Assert('month >= 1 && month <= 12')
  const factory YearMonth({required int year, required int month}) = _YearMonth;
}
