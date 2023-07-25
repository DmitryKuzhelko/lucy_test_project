// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currencies_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrenciesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Map<String, List<Currency>> currencies) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Map<String, List<Currency>> currencies)? success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Map<String, List<Currency>> currencies)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrenciesListLoading value) loading,
    required TResult Function(CurrenciesListSuccess value) success,
    required TResult Function(CurrenciesListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrenciesListLoading value)? loading,
    TResult? Function(CurrenciesListSuccess value)? success,
    TResult? Function(CurrenciesListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrenciesListLoading value)? loading,
    TResult Function(CurrenciesListSuccess value)? success,
    TResult Function(CurrenciesListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesStateCopyWith<$Res> {
  factory $CurrenciesStateCopyWith(
          CurrenciesState value, $Res Function(CurrenciesState) then) =
      _$CurrenciesStateCopyWithImpl<$Res, CurrenciesState>;
}

/// @nodoc
class _$CurrenciesStateCopyWithImpl<$Res, $Val extends CurrenciesState>
    implements $CurrenciesStateCopyWith<$Res> {
  _$CurrenciesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CurrenciesListLoadingCopyWith<$Res> {
  factory _$$CurrenciesListLoadingCopyWith(_$CurrenciesListLoading value,
          $Res Function(_$CurrenciesListLoading) then) =
      __$$CurrenciesListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrenciesListLoadingCopyWithImpl<$Res>
    extends _$CurrenciesStateCopyWithImpl<$Res, _$CurrenciesListLoading>
    implements _$$CurrenciesListLoadingCopyWith<$Res> {
  __$$CurrenciesListLoadingCopyWithImpl(_$CurrenciesListLoading _value,
      $Res Function(_$CurrenciesListLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrenciesListLoading
    with DiagnosticableTreeMixin
    implements CurrenciesListLoading {
  const _$CurrenciesListLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrenciesState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CurrenciesState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CurrenciesListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Map<String, List<Currency>> currencies) success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Map<String, List<Currency>> currencies)? success,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Map<String, List<Currency>> currencies)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrenciesListLoading value) loading,
    required TResult Function(CurrenciesListSuccess value) success,
    required TResult Function(CurrenciesListError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrenciesListLoading value)? loading,
    TResult? Function(CurrenciesListSuccess value)? success,
    TResult? Function(CurrenciesListError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrenciesListLoading value)? loading,
    TResult Function(CurrenciesListSuccess value)? success,
    TResult Function(CurrenciesListError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CurrenciesListLoading implements CurrenciesState {
  const factory CurrenciesListLoading() = _$CurrenciesListLoading;
}

/// @nodoc
abstract class _$$CurrenciesListSuccessCopyWith<$Res> {
  factory _$$CurrenciesListSuccessCopyWith(_$CurrenciesListSuccess value,
          $Res Function(_$CurrenciesListSuccess) then) =
      __$$CurrenciesListSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, List<Currency>> currencies});
}

/// @nodoc
class __$$CurrenciesListSuccessCopyWithImpl<$Res>
    extends _$CurrenciesStateCopyWithImpl<$Res, _$CurrenciesListSuccess>
    implements _$$CurrenciesListSuccessCopyWith<$Res> {
  __$$CurrenciesListSuccessCopyWithImpl(_$CurrenciesListSuccess _value,
      $Res Function(_$CurrenciesListSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = null,
  }) {
    return _then(_$CurrenciesListSuccess(
      null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Currency>>,
    ));
  }
}

/// @nodoc

class _$CurrenciesListSuccess
    with DiagnosticableTreeMixin
    implements CurrenciesListSuccess {
  const _$CurrenciesListSuccess(final Map<String, List<Currency>> currencies)
      : _currencies = currencies;

  final Map<String, List<Currency>> _currencies;
  @override
  Map<String, List<Currency>> get currencies {
    if (_currencies is EqualUnmodifiableMapView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_currencies);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrenciesState.success(currencies: $currencies)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrenciesState.success'))
      ..add(DiagnosticsProperty('currencies', currencies));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrenciesListSuccess &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currencies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrenciesListSuccessCopyWith<_$CurrenciesListSuccess> get copyWith =>
      __$$CurrenciesListSuccessCopyWithImpl<_$CurrenciesListSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Map<String, List<Currency>> currencies) success,
    required TResult Function() error,
  }) {
    return success(currencies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Map<String, List<Currency>> currencies)? success,
    TResult? Function()? error,
  }) {
    return success?.call(currencies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Map<String, List<Currency>> currencies)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(currencies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrenciesListLoading value) loading,
    required TResult Function(CurrenciesListSuccess value) success,
    required TResult Function(CurrenciesListError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrenciesListLoading value)? loading,
    TResult? Function(CurrenciesListSuccess value)? success,
    TResult? Function(CurrenciesListError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrenciesListLoading value)? loading,
    TResult Function(CurrenciesListSuccess value)? success,
    TResult Function(CurrenciesListError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CurrenciesListSuccess implements CurrenciesState {
  const factory CurrenciesListSuccess(
      final Map<String, List<Currency>> currencies) = _$CurrenciesListSuccess;

  Map<String, List<Currency>> get currencies;
  @JsonKey(ignore: true)
  _$$CurrenciesListSuccessCopyWith<_$CurrenciesListSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrenciesListErrorCopyWith<$Res> {
  factory _$$CurrenciesListErrorCopyWith(_$CurrenciesListError value,
          $Res Function(_$CurrenciesListError) then) =
      __$$CurrenciesListErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrenciesListErrorCopyWithImpl<$Res>
    extends _$CurrenciesStateCopyWithImpl<$Res, _$CurrenciesListError>
    implements _$$CurrenciesListErrorCopyWith<$Res> {
  __$$CurrenciesListErrorCopyWithImpl(
      _$CurrenciesListError _value, $Res Function(_$CurrenciesListError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrenciesListError
    with DiagnosticableTreeMixin
    implements CurrenciesListError {
  const _$CurrenciesListError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrenciesState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CurrenciesState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CurrenciesListError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Map<String, List<Currency>> currencies) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Map<String, List<Currency>> currencies)? success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Map<String, List<Currency>> currencies)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrenciesListLoading value) loading,
    required TResult Function(CurrenciesListSuccess value) success,
    required TResult Function(CurrenciesListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrenciesListLoading value)? loading,
    TResult? Function(CurrenciesListSuccess value)? success,
    TResult? Function(CurrenciesListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrenciesListLoading value)? loading,
    TResult Function(CurrenciesListSuccess value)? success,
    TResult Function(CurrenciesListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CurrenciesListError implements CurrenciesState {
  const factory CurrenciesListError() = _$CurrenciesListError;
}
