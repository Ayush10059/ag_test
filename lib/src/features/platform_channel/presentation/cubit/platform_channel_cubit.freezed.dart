// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'platform_channel_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlatformChannelState {
  FormStatus get status => throw _privateConstructorUsedError;
  dynamic get platformMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlatformChannelStateCopyWith<PlatformChannelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatformChannelStateCopyWith<$Res> {
  factory $PlatformChannelStateCopyWith(PlatformChannelState value,
          $Res Function(PlatformChannelState) then) =
      _$PlatformChannelStateCopyWithImpl<$Res, PlatformChannelState>;
  @useResult
  $Res call({FormStatus status, dynamic platformMessage});

  $FormStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$PlatformChannelStateCopyWithImpl<$Res,
        $Val extends PlatformChannelState>
    implements $PlatformChannelStateCopyWith<$Res> {
  _$PlatformChannelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? platformMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      platformMessage: freezed == platformMessage
          ? _value.platformMessage
          : platformMessage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormStatusCopyWith<$Res> get status {
    return $FormStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlatformChannelStateImplCopyWith<$Res>
    implements $PlatformChannelStateCopyWith<$Res> {
  factory _$$PlatformChannelStateImplCopyWith(_$PlatformChannelStateImpl value,
          $Res Function(_$PlatformChannelStateImpl) then) =
      __$$PlatformChannelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormStatus status, dynamic platformMessage});

  @override
  $FormStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$PlatformChannelStateImplCopyWithImpl<$Res>
    extends _$PlatformChannelStateCopyWithImpl<$Res, _$PlatformChannelStateImpl>
    implements _$$PlatformChannelStateImplCopyWith<$Res> {
  __$$PlatformChannelStateImplCopyWithImpl(_$PlatformChannelStateImpl _value,
      $Res Function(_$PlatformChannelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? platformMessage = freezed,
  }) {
    return _then(_$PlatformChannelStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      platformMessage: freezed == platformMessage
          ? _value.platformMessage
          : platformMessage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$PlatformChannelStateImpl extends _PlatformChannelState {
  const _$PlatformChannelStateImpl(
      {this.status = const FormStatus.initial(), required this.platformMessage})
      : super._();

  @override
  @JsonKey()
  final FormStatus status;
  @override
  final dynamic platformMessage;

  @override
  String toString() {
    return 'PlatformChannelState(status: $status, platformMessage: $platformMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformChannelStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.platformMessage, platformMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(platformMessage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformChannelStateImplCopyWith<_$PlatformChannelStateImpl>
      get copyWith =>
          __$$PlatformChannelStateImplCopyWithImpl<_$PlatformChannelStateImpl>(
              this, _$identity);
}

abstract class _PlatformChannelState extends PlatformChannelState {
  const factory _PlatformChannelState(
      {final FormStatus status,
      required final dynamic platformMessage}) = _$PlatformChannelStateImpl;
  const _PlatformChannelState._() : super._();

  @override
  FormStatus get status;
  @override
  dynamic get platformMessage;
  @override
  @JsonKey(ignore: true)
  _$$PlatformChannelStateImplCopyWith<_$PlatformChannelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
