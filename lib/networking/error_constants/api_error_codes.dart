// ignore_for_file: constant_identifier_names

class ApiErrorField {
  static const EMAIL = "email";
  static const PASSWORD = "password";
  static const CODE = "code";
}

class ApiErrorFieldCode {
  static const REQUIRED = "REQUIRED";
  static const BETWEEN = "BETWEEN";
  static const MIN = "MIN";
  static const UNIQUE = "UNIQUE";
  static const INVALID = "INVALID";
  static const SIZE = "SIZE";
}

class CommonErrorCode {
  static const USER_NOT_EXISTS = "USER_NOT_EXISTS";
  static const USER_IS_NOT_ACTIVE = "USER_IS_NOT_ACTIVE";
  static const EMAIL_IS_NOT_VERIFIED = "EMAIL_IS_NOT_VERIFIED";
  static const CODE_NOT_MATCH_OR_EXPIRED = "CODE_NOT_MATCH_OR_EXPIRED";
  static const CODE_TIME = "CODE_TIME";
  static const NOT_FOUND = "NOT_FOUND";
  static const PHONE_IS_ALREADY_VERIFIED = "PHONE_IS_ALREADY_VERIFIED";
}
