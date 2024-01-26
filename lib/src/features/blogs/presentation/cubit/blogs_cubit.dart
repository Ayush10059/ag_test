import 'package:ag_test/src/core/base/base_cubit.dart';
import 'package:ag_test/src/core/form/form_status.dart';
import 'package:ag_test/src/features/blogs/domain/repo/blogs_repository.dart';
import 'package:ag_test/src/features/blogs/data/models/blog_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';

part 'blogs_cubit.freezed.dart';
part 'blogs_state.dart';

@injectable
class BlogsCubit extends BaseCubit<BlogsState> {
  BlogsCubit(this._repository) : super(BlogsState.initial());

  final BlogsRepository _repository;
  void getBlogs() async {
    emit(state.copyWith(blogsPagingStatus: const FormStatus.submitting()));
    state.blogsPagingController.addPageRequestListener(
      (pageKey) {
        handleBusinessLogic(
            call: _repository.getBlogs(),
            onSuccess: (blogResponseModel) {
              if (blogResponseModel.meta.currentPage <
                  blogResponseModel.meta.lastPage) {
                state.blogsPagingController.appendPage(blogResponseModel.data,
                    state.blogsPagingController.nextPageKey! + 1);
              } else if (blogResponseModel.meta.currentPage ==
                  blogResponseModel.meta.lastPage) {
                state.blogsPagingController
                    .appendLastPage(blogResponseModel.data);
              }

              return state.copyWith(
                  blogsPagingStatus: const FormStatus.success());
            },
            onFailure: (error) {
              state.blogsPagingController.error = error;
              return state.copyWith(
                  blogsPagingStatus: FormStatus.error(error: error));
            });
      },
    );
  }

  void refreshBlogs() {
    state.blogsPagingController.itemList?.clear();
    state.blogsPagingController.refresh();
  }
}
