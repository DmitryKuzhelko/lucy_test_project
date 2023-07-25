part of 'currencies_cubit.dart';

@freezed
class CurrenciesState with _$CurrenciesState {
  const factory CurrenciesState.loading() = CurrenciesListLoading;
  const factory CurrenciesState.success(Map<String, List<Currency>> currencies) =
      CurrenciesListSuccess;
  const factory CurrenciesState.error() = CurrenciesListError;
}
