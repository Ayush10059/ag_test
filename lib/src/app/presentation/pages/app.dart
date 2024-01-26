import 'package:ag_test/localization/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'package:ag_test/src/core/di/injector.dart';
import 'package:ag_test/src/core/routes/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  App({super.key});

  final AppRouter _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      restorationScopeId: 'root',
      debugShowCheckedModeBanner: false,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.delegate.supportedLocales,
      builder: (BuildContext context, Widget? child) {
        ErrorWidget.builder = (FlutterErrorDetails details) => Center(
              child:
                  Text('Flutter Error Screen ${details.exceptionAsString()}'),
            );
        return child!;
      },
    );
  }
}
