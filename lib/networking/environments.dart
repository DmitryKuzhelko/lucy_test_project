import 'package:lucy_test_project/common/flavors_utils.dart';

class Environments {
  Environments(this.baseUrl);

  final String baseUrl;

  static Environments get current {
    var url = Environments.dev();
    if (FlavorConfig.isDev()) {
      url = Environments.dev();
    } else if (FlavorConfig.isStage()) {
      url = Environments.stage();
    } else {
      url = Environments.prod();
    }

    return url;
  }

  factory Environments.dev() => Environments('https://www.nbrb.by/api');

  factory Environments.stage() => Environments('https://www.nbrb.by/api');

  factory Environments.prod() => Environments('https://www.nbrb.by/api');

  @override
  String toString() => baseUrl;
}
