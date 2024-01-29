import 'package:ag_test/src/core/base/base_repository.dart';
import 'package:ag_test/src/core/typedefs/typedefs.dart';
import 'package:ag_test/src/features/platform_channel/domain/repo/platform_channel_repository.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PlatformChannelRepository)
class PlatformChannelRepositoryImpl extends BaseRepository
    implements PlatformChannelRepository {
  PlatformChannelRepositoryImpl();

  @override
  EitherResponse<String> invokeMethod({required methodName}) {
    const platform = MethodChannel('com.example.ag_test/custom_channel');

    return handleNetworkCall(
      call: platform.invokeMethod(methodName),
      onSuccess: (data) => data,
    );
  }
}
