import 'dart:async';

import 'package:ag_test/src/app/presentation/pages/app.dart';
import 'package:ag_test/src/core/di/injector.dart';
import 'package:ag_test/src/core/helpers/bloc_observer_helper.dart';
import 'package:ag_test/src/core/logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void bootstrap({
  required Function() createEnv,
}) {
  /// Bloc state observer
  Bloc.observer = BlocObserverHelper();

  /// Flutter run time error display
  FlutterError.onError = (FlutterErrorDetails details) {
    logger.e(details.exceptionAsString(),
        error: details.exception, stackTrace: details.stack);
  };

  createEnv();

  /// Configure DI
  configureInjection();

  /// Runs error on own error zone
  Future.delayed(const Duration(milliseconds: 500), () => runApp(App()));
}
