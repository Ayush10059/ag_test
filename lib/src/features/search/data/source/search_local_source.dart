import 'package:ag_test/src/core/base/base_remote_source.dart';
import 'package:injectable/injectable.dart';

import 'package:flutter/services.dart' show rootBundle;

abstract class SearchLocalSource {
  Future<String> getJson();
}

@LazySingleton(as: SearchLocalSource)
class SearchLocalSourceImpl extends BaseRemoteSource
    implements SearchLocalSource {
  SearchLocalSourceImpl(super.dio);

  @override
  Future<String> getJson() async {
    return rootBundle.loadString('assets/json/hierarchy.json');
  }
}
