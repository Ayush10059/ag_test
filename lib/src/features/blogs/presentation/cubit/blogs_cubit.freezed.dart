// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blogs_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlogsState {
  FormStatus get blogsPagingStatus => throw _privateConstructorUsedError;
  PagingController<int, Datum> get blogsPagingController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogsStateCopyWith<BlogsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogsStateCopyWith<$Res> {
  factory $BlogsStateCopyWith(
          BlogsState value, $Res Function(BlogsState) then) =
      _$BlogsStateCopyWithImpl<$Res, BlogsState>;
  @useResult
  $Res call(
      {FormStatus blogsPagingStatus,
      PagingController<int, Datum> blogsPagingController});

  $FormStatusCopyWith<$Res> get blogsPagingStatus;
}

/// @nodoc
class _$BlogsStateCopyWithImpl<$Res, $Val extends BlogsState>
    implements $BlogsStateCopyWith<$Res> {
  _$BlogsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogsPagingStatus = null,
    Object? blogsPagingController = null,
  }) {
    return _then(_value.copyWith(
      blogsPagingStatus: null == blogsPagingStatus
          ? _value.blogsPagingStatus
          : blogsPagingStatus // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      blogsPagingController: null == blogsPagingController
          ? _value.blogsPagingController
          : blogsPagingController // ignore: cast_nullable_to_non_nullable
              as PagingController<int, Datum>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormStatusCopyWith<$Res> get blogsPagingStatus {
    return $FormStatusCopyWith<$Res>(_value.blogsPagingStatus, (value) {
      return _then(_value.copyWith(blogsPagingStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlogsStateImplCopyWith<$Res>
    implements $BlogsStateCopyWith<$Res> {
  factory _$$BlogsStateImplCopyWith(
          _$BlogsStateImpl value, $Res Function(_$BlogsStateImpl) then) =
      __$$BlogsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormStatus blogsPagingStatus,
      PagingController<int, Datum> blogsPagingController});

  @override
  $FormStatusCopyWith<$Res> get blogsPagingStatus;
}

/// @nodoc
class __$$BlogsStateImplCopyWithImpl<$Res>
    extends _$BlogsStateCopyWithImpl<$Res, _$BlogsStateImpl>
    implements _$$BlogsStateImplCopyWith<$Res> {
  __$$BlogsStateImplCopyWithImpl(
      _$BlogsStateImpl _value, $Res Function(_$BlogsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogsPagingStatus = null,
    Object? blogsPagingController = null,
  }) {
    return _then(_$BlogsStateImpl(
      blogsPagingStatus: null == blogsPagingStatus
          ? _value.blogsPagingStatus
          : blogsPagingStatus // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      blogsPagingController: null == blogsPagingController
          ? _value.blogsPagingController
          : blogsPagingController // ignore: cast_nullable_to_non_nullable
              as PagingController<int, Datum>,
    ));
  }
}

/// @nodoc

class _$BlogsStateImpl extends _BlogsState {
  const _$BlogsStateImpl(
      {this.blogsPagingStatus = const FormStatus.initial(),
      required this.blogsPagingController})
      : super._();

  @override
  @JsonKey()
  final FormStatus blogsPagingStatus;
  @override
  final PagingController<int, Datum> blogsPagingController;

  @override
  String toString() {
    return 'BlogsState(blogsPagingStatus: $blogsPagingStatus, blogsPagingController: $blogsPagingController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogsStateImpl &&
            (identical(other.blogsPagingStatus, blogsPagingStatus) ||
                other.blogsPagingStatus == blogsPagingStatus) &&
            (identical(other.blogsPagingController, blogsPagingController) ||
                other.blogsPagingController == blogsPagingController));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, blogsPagingStatus, blogsPagingController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogsStateImplCopyWith<_$BlogsStateImpl> get copyWith =>
      __$$BlogsStateImplCopyWithImpl<_$BlogsStateImpl>(this, _$identity);
}

abstract class _BlogsState extends BlogsState {
  const factory _BlogsState(
          {final FormStatus blogsPagingStatus,
          required final PagingController<int, Datum> blogsPagingController}) =
      _$BlogsStateImpl;
  const _BlogsState._() : super._();

  @override
  FormStatus get blogsPagingStatus;
  @override
  PagingController<int, Datum> get blogsPagingController;
  @override
  @JsonKey(ignore: true)
  _$$BlogsStateImplCopyWith<_$BlogsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
