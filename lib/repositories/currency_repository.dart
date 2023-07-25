import 'package:lucy_test_project/models/currency.dart';
import 'package:lucy_test_project/networking/network_utils/resource.dart';

abstract class CurrencyRepository {
  Stream<Resource<List<Currency>, String>> getCurrenciesOnDate(String date);
}
