import 'dart:convert';

import 'package:ag_test/src/core/base/base_repository.dart';
import 'package:ag_test/src/core/typedefs/typedefs.dart';
import 'package:ag_test/src/features/search/data/models/hierarchy_model.dart';
import 'package:ag_test/src/features/search/data/source/search_local_source.dart';
import 'package:ag_test/src/features/search/domain/search_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl extends BaseRepository implements SearchRepository {
  SearchRepositoryImpl(this._localSource);

  final SearchLocalSource _localSource;

  @override
  EitherResponse<List<HierarchyItem>> getJson() => handleNetworkCall(
        call: _localSource.getJson(),
        onSuccess: (data) {
          List<dynamic> list = json.decode(data);
          return list.map((item) => HierarchyItem.fromJson(item)).toList();
        },
      );
}
