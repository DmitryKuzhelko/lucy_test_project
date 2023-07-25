class ApiConstants {
  static final ApiConstants _instance = ApiConstants._privateConstructor();

  ApiConstants._privateConstructor()
      : notes = Currencies(),
        auth = Auth();

  factory ApiConstants() {
    return _instance;
  }

  final Currencies notes;
  final Auth auth;
}

class Currencies {
  // Example /exrates/rates?ondate=2016-7-6&periodicity=0;
  String getCurrenties({
    required String date,
    int periodicity = 0,
  }) =>
      '/exrates/rates?ondate=$date&periodicity=$periodicity';
}

// To use the auth module in the future
class Auth {
  String signUp = '/auth/sign-up';
  String signIn = '/auth/sign-in';
  String refresh = '/auth/refresh-token';
  String logout = '/auth/logout';
}
