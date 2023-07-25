import 'dart:async';

import 'package:api_error_parser_plus/api_error_parser_plus.dart';
import 'package:lucy_test_project/networking/network_utils/resource.dart';

typedef SaveCallResult<ResultType, RequestType> = Future<ResultType?> Function(
    RequestType? item);

typedef ShouldFetch<ResultType> = bool Function(ResultType data);

typedef LoadFromCache<ResultType> = Stream<ResultType> Function();

typedef CreateCall<RequestType> = Future<RequestType> Function();

typedef FetchFailed = void Function();

typedef PaginationCall = void Function(Pagination? pagination);

class NetworkBoundResource<ResultType, RequestType, T> {
  final ApiParser<T> _apiParser;
  final SaveCallResult<ResultType, RequestType> saveCallResult;
  final CreateCall createCall;
  PaginationCall? paginationCall;
  FetchFailed? fetchFailed;

  late StreamController _resourceStream;

  NetworkBoundResource(
    this._apiParser, {
    required this.saveCallResult,
    required this.createCall,
    this.paginationCall,
    this.fetchFailed,
  }) {
    fetchFailed ??= () => {};
    _resourceStream = StreamController<Resource<ResultType, T>>(onListen: () {
      _startListenStream();
    });
  }

  void _startListenStream() {
    _resourceStream.add(Resource<ResultType, String>.loading(null));
    _fetchFromNetwork();
  }

  void _fetchFromNetwork() async {
    try {
      final apiResponse = await createCall();
      final ApiParserResponse<RequestType, T> parserResponse =
          _apiParser.parse(apiResponse);
      if (parserResponse is ApiParserSuccessResponse<RequestType, T>) {
        if (parserResponse.pagination != null && paginationCall != null) {
          paginationCall!(parserResponse.pagination);
        }
        _resourceStream.add(Resource<ResultType, String>.success(
          await saveCallResult(parserResponse.data),
          pagination: parserResponse.pagination,
        ));
      } else if (parserResponse is ApiParserEmptyResponse<RequestType, T>) {
        _resourceStream.add(
            Resource<ResultType, String>.success(await saveCallResult(null)));
      } else {
        fetchFailed ??= () => {};
        _resourceStream.add(Resource<ResultType, String>.errorList(
          data: null,
          errors: (parserResponse as ApiParserErrorResponse<ResultType, String>)
              .errors,
        ));
      }
    } catch (e) {
      fetchFailed ??= () => {};
      if (e is Error) {
        _resourceStream
            .add(Resource<ResultType, String>.error(null, e.toString()));
      } else {
        _resourceStream.add(Resource<ResultType, String>.errorException(
            null, e is Exception ? e : null));
      }
    }
  }

  Stream<Resource<ResultType, T>> asStream() {
    return _resourceStream.stream as Stream<Resource<ResultType, T>>;
  }
}
