// Used standard: https://pub.dev/packages/api_error_parser

import 'package:lucy_test_project/networking/error_constants/error_strings.dart';

import 'api_error_codes.dart';

class ApiErrorTarget {
  static const common = "common";
  static const field = "field";
}

class ApiErrors {
  static const commonErrors = {"": ""};

  static const Map<String, Map<String, String>> fieldErrors = {
    ApiErrorField.EMAIL: {
      ApiErrorFieldCode.REQUIRED: ErrorStrings.ERROR_EMAIL_IS_REQUIRED,
      ApiErrorFieldCode.UNIQUE: ErrorStrings.ERROR_EMAIL_ALREADY_EXISTS,
    },
    ApiErrorField.PASSWORD: {
      ApiErrorFieldCode.REQUIRED: ErrorStrings.ERROR_PASSWORD_IS_REQUIRED,
      ApiErrorFieldCode.MIN: ErrorStrings.ERROR_PASSWORD_RULE_LENGTH,
    },
  };
}
