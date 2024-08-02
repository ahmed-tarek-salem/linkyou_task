import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvType { test, production }

class EnvData {
  final EnvType? envType;
  final String? apisBaseUrl;

  /// Private constructor can't instanciated with this constructor
  EnvData._({
    required this.envType,
    required this.apisBaseUrl,
  });

  /// The only way it can be instanciated is using from json
  factory EnvData.fromJson(Map<String, dynamic> map) {
    return EnvData._(
      envType: _envTypesLookup[map['ENV_TYPE']]!,
      apisBaseUrl: map['APIS_BASE_URL'],
    );
  }
}

final Map<String, EnvType> _envTypesLookup = {
  EnvType.test.name: EnvType.test,
  EnvType.production.name: EnvType.production,
};

class EnvService {
  late final EnvData env;

  Future<void> init() async {
    await dotenv.load(fileName: ".env");

    env = EnvData.fromJson(dotenv.env);
  }
}
