import 'package:ag_test/src/core/base/env.dart';
import 'package:ag_test/src/core/constants/env_keys.dart';
import 'package:envied/envied.dart';

part 'dev_env.g.dart';

@Envied(name: EnvKeys.devEnv, path: EnvKeys.devEnvPath)
class DevelopmentEnv extends EnvVars {
  @override
  @EnviedField(varName: EnvKeys.baseUrlKey, obfuscate: true)
  String baseUrl = _DevelopmentEnv.baseUrl;
}
