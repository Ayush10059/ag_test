import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(initializerName: r'$initGetIt', asExtension: false)
void configureInjection() {
  $initGetIt(getIt, environment: Environment.prod);
}
