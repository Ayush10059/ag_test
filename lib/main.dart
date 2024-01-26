import 'dart:async';

import 'package:ag_test/bootstrap.dart';
import 'package:ag_test/src/core/base/env.dart';
import 'package:ag_test/src/core/envs/dev_env.dart';

/// Bootstraps project with early initialization
/// with [DevelopmentEnv()] Environment configurations
void main() => runZonedGuarded(
      () {
        bootstrap(
          createEnv: () => Env.instance.createEnv(DevelopmentEnv()),
        );
      },
      (Object error, StackTrace stackTrace) {},
    );
