part of 'platform_channel_cubit.dart';

@freezed
class PlatformChannelState with _$PlatformChannelState {
  const PlatformChannelState._();

  const factory PlatformChannelState({
    @Default(FormStatus.initial()) FormStatus status,
    required dynamic platformMessage,
  }) = _PlatformChannelState;

  factory PlatformChannelState.initial() =>
      const PlatformChannelState(platformMessage: '');
}
