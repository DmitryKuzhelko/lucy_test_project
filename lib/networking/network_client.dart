import 'package:dio/dio.dart';

class NetworkClient {
  NetworkClient({
    required String baseUrl,
    required this.dio,
  }) {
    _setupDioClient(baseUrl);
  }

  final Dio dio;

  final int connectTimeoutInMillis = 60 * 1000;
  final int sentTimeoutInMillis = 60 * 1000;
  final int receiveTimeoutInMillis = 60 * 1000;

  void _setupDioClient(String baseUrl) {
    dio.options.baseUrl = baseUrl;
    _defaultHeaders();
    _defaultInterceptors();
    _defaultTimeouts();
  }

  void _defaultHeaders() {
    dio.options.headers[Headers.contentTypeHeader] = Headers.jsonContentType;
  }

  void _defaultInterceptors() {
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    );
  }

  void _defaultTimeouts() {
    dio.options.connectTimeout = Duration(milliseconds: connectTimeoutInMillis);
    dio.options.sendTimeout = Duration(milliseconds: sentTimeoutInMillis);
    dio.options.receiveTimeout = Duration(milliseconds: receiveTimeoutInMillis);
  }

  void addHeader({
    required String headerKey,
    required String headerValue,
  }) {
    dio.options.headers[headerKey] = headerValue;
  }

  void removeHeader(String headerKey) {
    dio.options.headers.remove(headerKey);
  }

  void clearHeaders() {
    dio.options.headers.clear();
  }
}
