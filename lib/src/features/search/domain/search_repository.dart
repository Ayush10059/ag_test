import 'package:ag_test/src/core/typedefs/typedefs.dart';
import 'package:ag_test/src/features/search/data/models/hierarchy_model.dart';

abstract class SearchRepository {
  EitherResponse<List<HierarchyItem>> getJson();
}
