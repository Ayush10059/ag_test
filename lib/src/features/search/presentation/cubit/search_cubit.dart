import 'package:ag_test/src/core/base/base_cubit.dart';
import 'package:ag_test/src/core/form/form_status.dart';
import 'package:ag_test/src/features/search/data/models/hierarchy_model.dart';
import 'package:ag_test/src/features/search/domain/search_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

@injectable
class SearchCubit extends BaseCubit<SearchState> {
  SearchCubit(this._repository) : super(SearchState.initial());

  final SearchRepository _repository;

  void onSearchChanged(String value) {
    emit(state.copyWith(searchText: value));
  }

  void search() async {
    emit(state.copyWith(status: const FormStatus.submitting()));

    handleBusinessLogic(
      call: _repository.getJson(),
      onSuccess: (blogResponseModel) {
        findHierarchyPath(items: blogResponseModel, input: state.searchText);
        return state.copyWith(status: const FormStatus.success());
      },
      onFailure: (error) =>
          state.copyWith(status: FormStatus.error(error: error)),
    );
  }

  void findHierarchyPath(
      {required List<HierarchyItem> items, required String input}) {
    List<String> path = [];
    _dfs(items, input, path);

    if (path.isNotEmpty) {
      emit(
        state.copyWith(
          path: path.reversed.join(' > '),
        ),
      );
    } else {
      emit(
        state.copyWith(
          path: 'Hierarchy not found.',
        ),
      );
    }
  }

  bool _dfs(List<HierarchyItem> items, String input, List<String> path) {
    for (var item in items) {
      path.add(item.name);

      if (item.name == input) {
        return true;
      }
      // recursion
      if (_dfs(item.children, input, path)) {
        return true;
      }

      path.removeLast(); // backtrack if the target is not found in this subtree
    }

    return false;
  }
}
