import 'package:ag_test/src/core/base/base_cubit.dart';
import 'package:ag_test/src/core/form/form_status.dart';
import 'package:ag_test/src/features/platform_channel/domain/repo/platform_channel_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'platform_channel_state.dart';
part 'platform_channel_cubit.freezed.dart';

@injectable
class PlatformChannelCubit extends BaseCubit<PlatformChannelState> {
  PlatformChannelCubit(this._repository)
      : super(PlatformChannelState.initial());

  final PlatformChannelRepository _repository;

  void invokeMethod() {
    emit(state.copyWith(status: const FormStatus.submitting()));

    handleBusinessLogic(
      call: _repository.invokeMethod(methodName: 'transmitObject'),
      onSuccess: (message) => state.copyWith(
        status: const FormStatus.success(),
        platformMessage: message,
      ),
      onFailure: (error) =>
          state.copyWith(status: FormStatus.error(error: error)),
    );
  }
}
