import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_status.freezed.dart';

@freezed
class FormStatus with _$FormStatus {
  const factory FormStatus.initial() = _Initial;

  const factory FormStatus.invalid() = _Invalid;

  const factory FormStatus.submitting() = _Submitting;

  const factory FormStatus.error({String? error}) = _Error;

  const factory FormStatus.success({String? message}) = _Success;
}