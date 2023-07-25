// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Currency _$$_CurrencyFromJson(Map<String, dynamic> json) => _$_Currency(
      curId: json['Cur_ID'] as int?,
      date: json['Date'] as String?,
      curAbbreviation: json['Cur_Abbreviation'] as String?,
      curScale: json['Cur_Scale'] as int?,
      curName: json['Cur_Name'] as String?,
      curOfficialRate: (json['Cur_OfficialRate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CurrencyToJson(_$_Currency instance) =>
    <String, dynamic>{
      'Cur_ID': instance.curId,
      'Date': instance.date,
      'Cur_Abbreviation': instance.curAbbreviation,
      'Cur_Scale': instance.curScale,
      'Cur_Name': instance.curName,
      'Cur_OfficialRate': instance.curOfficialRate,
    };
