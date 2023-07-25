// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';
part 'currency.g.dart';

@freezed
class Currency with _$Currency {
  const factory Currency({
    @JsonKey(name: 'Cur_ID') int? curId,
    @JsonKey(name: 'Date') String? date,
    @JsonKey(name: 'Cur_Abbreviation') String? curAbbreviation,
    @JsonKey(name: 'Cur_Scale') int? curScale,
    @JsonKey(name: 'Cur_Name') String? curName,
    @JsonKey(name: 'Cur_OfficialRate') double? curOfficialRate,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);

  static List<Currency> listFromJson(List<dynamic> json) {
    return json.map((i) => Currency.fromJson(i)).toList();
  }
}
