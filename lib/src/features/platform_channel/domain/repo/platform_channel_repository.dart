import 'package:ag_test/src/core/typedefs/typedefs.dart';

abstract class PlatformChannelRepository {
  EitherResponse invokeMethod({required String methodName});
}
