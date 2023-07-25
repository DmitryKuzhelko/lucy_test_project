import 'package:api_error_parser_plus/api_error_parser_plus.dart';
import 'package:lucy_test_project/api_providers/currencies_api_provider.dart';
import 'package:lucy_test_project/models/currency.dart';
import 'package:lucy_test_project/networking/network_utils/network_bound_resource.dart';
import 'package:lucy_test_project/networking/network_utils/resource.dart';

import 'currency_repository.dart';

class CurrencyRepositoryImpl implements CurrencyRepository {
  final CurrenciesApiProvider _apiProvider;
  final ApiParser<String> _apiParser;

  CurrencyRepositoryImpl({
    required CurrenciesApiProvider apiProvider,
    required ApiParser<String> apiParser,
  })  : _apiProvider = apiProvider,
        _apiParser = apiParser;

  @override
  Stream<Resource<List<Currency>, String>> getCurrenciesOnDate(String date) {
    final networkClient =
        NetworkBoundResource<List<Currency>, List<Currency>, String>(
      _apiParser,
      saveCallResult: (List<Currency>? item) async {
        return item;
      },
      createCall: () {
        return _apiProvider.getCurrenciesOnDate(date);
      },
    );

    return networkClient.asStream();
  }
}

void main() async {
  List<Object> value = await Future.wait([delayedNumber(), delayedString()]);
  print(value); // [2, result]
}

Future<int> delayedNumber() async {
  await Future.delayed(const Duration(seconds: 2));
  return 2;
}

Future<String> delayedString() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'result';
}