import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lucy_test_project/models/currency.dart';
import 'package:lucy_test_project/networking/network_utils/resource.dart';
import 'package:lucy_test_project/repositories/currency_repository.dart';

part 'currencies_cubit.freezed.dart';
part 'currencies_state.dart';

enum Date {
  yesterday,
  today,
  tommorow,
}

class CurrenciesCubit extends Cubit<CurrenciesState> {
  CurrenciesCubit({
    required CurrencyRepository repository,
  })  : _repository = repository,
        super(const CurrenciesState.loading());

  StreamSubscription? _subscription;
  final CurrencyRepository _repository;

  void getCurrencies() {
    getTommorowCurrencies();
  }

  void getTommorowCurrencies() {
    getCurrenciesOnDate(
      date: _getFormattedDate(Date.tommorow),
      onSuccess: () {
        log("data loaded");
        // state is CurrenciesListSuccess;
        // emit(
        //   CurrenciesState.success({"", res}),
        // );
      },
    );
  }

  // void getTodaysCurrencies() {
  //   getCurrenciesOnDate(_getFormattedDate(Date.today));
  // }

  // void getYesterdaysCurrencies() {
  //   getCurrenciesOnDate(_getFormattedDate(Date.yesterday));
  // }

  void getCurrenciesOnDate({
    required String date,
    required VoidCallback onSuccess,
  }) {
    _cancelSubscriptions();
    _subscription = _repository.getCurrenciesOnDate(date).listen(
      (resource) {
        switch (resource.status) {
          case Status.success:
            _subscription?.cancel();
            onSuccess();
            emit(
              CurrenciesState.success({date: resource.data ?? []}),
            );
            break;
          case Status.loading:
            emit(const CurrenciesState.loading());
            break;
          case Status.error:
            _subscription?.cancel();
            emit(const CurrenciesState.error());
            break;
        }
      },
    );
  }

  String _getFormattedDate(Date date) {
    String datePattern = 'yyyy-MM-dd';
    DateFormat formatter = DateFormat(datePattern);
    final DateTime currentDateTime = DateTime.now();
    return formatter.format(switch (date) {
      Date.today => currentDateTime,
      Date.tommorow => currentDateTime.add(const Duration(days: 1)),
      Date.yesterday => currentDateTime.subtract(const Duration(days: 1)),
    });
  }

  void _cancelSubscriptions() {
    _subscription?.cancel();
  }

  @override
  void onChange(Change<CurrenciesState> change) {
    if (kDebugMode) {
      log("---------\n$runtimeType:\ncurrentState -> ${change.currentState}\nnextState -> ${change.nextState}\n---------");
    }
    super.onChange(change);
  }
}
