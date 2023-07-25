import 'dart:developer';

import 'package:api_error_parser_plus/api_error_parser_plus.dart';
import 'package:dio/dio.dart';
import 'package:lucy_test_project/models/currency.dart';
import 'package:lucy_test_project/networking/api_constants.dart';
import 'package:lucy_test_project/networking/network_client.dart';

class CurrenciesApiProvider {
  CurrenciesApiProvider({
    required NetworkClient networkClient,
  })  : _networkClient = networkClient,
        _apiConstants = ApiConstants();
  final NetworkClient _networkClient;
  final ApiConstants _apiConstants;

  Future<ApiResponseEntity<List<Currency>>> getCurrenciesOnDate(
      String date) async {
    try {
      final Response response = await _networkClient.dio.get(
        _apiConstants.notes.getCurrenties(date: date),
      );

      log("messag44e: ${Currency.listFromJson(response.data as List<dynamic>)}");
      return ApiResponseEntity<List<Currency>>.fromJsonList(
        response.data as List<dynamic>,
        fromJson: Currency.listFromJson,
      );
    } on DioException catch (error) {
      log("error: ${error.toString()}");
      return ApiResponseEntity<List<Currency>>.fromJson(
        error.response?.data as Map<String, dynamic>,
        fromJson: null,
      );
    } catch (error) {
      log("error: ${error.toString()}");
      return ApiResponseEntity<List<Currency>>.fromJson(
        {},
        fromJson: null,
      );
    }
  }
}
