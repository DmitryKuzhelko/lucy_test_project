// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return _Currency.fromJson(json);
}

/// @nodoc
mixin _$Currency {
  @JsonKey(name: 'Cur_ID')
  int? get curId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'Cur_Abbreviation')
  String? get curAbbreviation => throw _privateConstructorUsedError;
  @JsonKey(name: 'Cur_Scale')
  int? get curScale => throw _privateConstructorUsedError;
  @JsonKey(name: 'Cur_Name')
  String? get curName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Cur_OfficialRate')
  double? get curOfficialRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res, Currency>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Cur_ID') int? curId,
      @JsonKey(name: 'Date') String? date,
      @JsonKey(name: 'Cur_Abbreviation') String? curAbbreviation,
      @JsonKey(name: 'Cur_Scale') int? curScale,
      @JsonKey(name: 'Cur_Name') String? curName,
      @JsonKey(name: 'Cur_OfficialRate') double? curOfficialRate});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res, $Val extends Currency>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? curId = freezed,
    Object? date = freezed,
    Object? curAbbreviation = freezed,
    Object? curScale = freezed,
    Object? curName = freezed,
    Object? curOfficialRate = freezed,
  }) {
    return _then(_value.copyWith(
      curId: freezed == curId
          ? _value.curId
          : curId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      curAbbreviation: freezed == curAbbreviation
          ? _value.curAbbreviation
          : curAbbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      curScale: freezed == curScale
          ? _value.curScale
          : curScale // ignore: cast_nullable_to_non_nullable
              as int?,
      curName: freezed == curName
          ? _value.curName
          : curName // ignore: cast_nullable_to_non_nullable
              as String?,
      curOfficialRate: freezed == curOfficialRate
          ? _value.curOfficialRate
          : curOfficialRate // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$$_CurrencyCopyWith(
          _$_Currency value, $Res Function(_$_Currency) then) =
      __$$_CurrencyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Cur_ID') int? curId,
      @JsonKey(name: 'Date') String? date,
      @JsonKey(name: 'Cur_Abbreviation') String? curAbbreviation,
      @JsonKey(name: 'Cur_Scale') int? curScale,
      @JsonKey(name: 'Cur_Name') String? curName,
      @JsonKey(name: 'Cur_OfficialRate') double? curOfficialRate});
}

/// @nodoc
class __$$_CurrencyCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$_Currency>
    implements _$$_CurrencyCopyWith<$Res> {
  __$$_CurrencyCopyWithImpl(
      _$_Currency _value, $Res Function(_$_Currency) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? curId = freezed,
    Object? date = freezed,
    Object? curAbbreviation = freezed,
    Object? curScale = freezed,
    Object? curName = freezed,
    Object? curOfficialRate = freezed,
  }) {
    return _then(_$_Currency(
      curId: freezed == curId
          ? _value.curId
          : curId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      curAbbreviation: freezed == curAbbreviation
          ? _value.curAbbreviation
          : curAbbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      curScale: freezed == curScale
          ? _value.curScale
          : curScale // ignore: cast_nullable_to_non_nullable
              as int?,
      curName: freezed == curName
          ? _value.curName
          : curName // ignore: cast_nullable_to_non_nullable
              as String?,
      curOfficialRate: freezed == curOfficialRate
          ? _value.curOfficialRate
          : curOfficialRate // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Currency implements _Currency {
  const _$_Currency(
      {@JsonKey(name: 'Cur_ID') this.curId,
      @JsonKey(name: 'Date') this.date,
      @JsonKey(name: 'Cur_Abbreviation') this.curAbbreviation,
      @JsonKey(name: 'Cur_Scale') this.curScale,
      @JsonKey(name: 'Cur_Name') this.curName,
      @JsonKey(name: 'Cur_OfficialRate') this.curOfficialRate});

  factory _$_Currency.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyFromJson(json);

  @override
  @JsonKey(name: 'Cur_ID')
  final int? curId;
  @override
  @JsonKey(name: 'Date')
  final String? date;
  @override
  @JsonKey(name: 'Cur_Abbreviation')
  final String? curAbbreviation;
  @override
  @JsonKey(name: 'Cur_Scale')
  final int? curScale;
  @override
  @JsonKey(name: 'Cur_Name')
  final String? curName;
  @override
  @JsonKey(name: 'Cur_OfficialRate')
  final double? curOfficialRate;

  @override
  String toString() {
    return 'Currency(curId: $curId, date: $date, curAbbreviation: $curAbbreviation, curScale: $curScale, curName: $curName, curOfficialRate: $curOfficialRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Currency &&
            (identical(other.curId, curId) || other.curId == curId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.curAbbreviation, curAbbreviation) ||
                other.curAbbreviation == curAbbreviation) &&
            (identical(other.curScale, curScale) ||
                other.curScale == curScale) &&
            (identical(other.curName, curName) || other.curName == curName) &&
            (identical(other.curOfficialRate, curOfficialRate) ||
                other.curOfficialRate == curOfficialRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, curId, date, curAbbreviation,
      curScale, curName, curOfficialRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyCopyWith<_$_Currency> get copyWith =>
      __$$_CurrencyCopyWithImpl<_$_Currency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyToJson(
      this,
    );
  }
}

abstract class _Currency implements Currency {
  const factory _Currency(
          {@JsonKey(name: 'Cur_ID') final int? curId,
          @JsonKey(name: 'Date') final String? date,
          @JsonKey(name: 'Cur_Abbreviation') final String? curAbbreviation,
          @JsonKey(name: 'Cur_Scale') final int? curScale,
          @JsonKey(name: 'Cur_Name') final String? curName,
          @JsonKey(name: 'Cur_OfficialRate') final double? curOfficialRate}) =
      _$_Currency;

  factory _Currency.fromJson(Map<String, dynamic> json) = _$_Currency.fromJson;

  @override
  @JsonKey(name: 'Cur_ID')
  int? get curId;
  @override
  @JsonKey(name: 'Date')
  String? get date;
  @override
  @JsonKey(name: 'Cur_Abbreviation')
  String? get curAbbreviation;
  @override
  @JsonKey(name: 'Cur_Scale')
  int? get curScale;
  @override
  @JsonKey(name: 'Cur_Name')
  String? get curName;
  @override
  @JsonKey(name: 'Cur_OfficialRate')
  double? get curOfficialRate;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyCopyWith<_$_Currency> get copyWith =>
      throw _privateConstructorUsedError;
}
