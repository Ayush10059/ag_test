part of 'blogs_cubit.dart';

@freezed
class BlogsState with _$BlogsState {
  const BlogsState._();

  const factory BlogsState({
    @Default(FormStatus.initial()) FormStatus blogsPagingStatus,
    required PagingController<int, Datum> blogsPagingController,
  }) = _BlogsState;

  factory BlogsState.initial() => BlogsState(
        blogsPagingController: PagingController<int, Datum>(firstPageKey: 1),
      );
}
