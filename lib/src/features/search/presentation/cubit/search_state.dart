part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const SearchState._();

  const factory SearchState({
    @Default(FormStatus.initial()) FormStatus status,
    required String searchText,
    required String path,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(searchText: '', path: '');
}
