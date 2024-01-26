import 'package:ag_test/src/core/base/base_remote_source.dart';
import 'package:ag_test/src/core/constants/api_uri.dart';
import 'package:injectable/injectable.dart';

abstract class BlogsRemoteSource {
  Future getBlogs();
}

@LazySingleton(as: BlogsRemoteSource)
class BlogsRemoteSourceImpl extends BaseRemoteSource
    implements BlogsRemoteSource {
  BlogsRemoteSourceImpl(super.dio);

  @override
  Future getBlogs() async {
    return super.networkRequest(
      request: (dio) =>
          dio.get('https://api.ambition.guru/${ApiURI.fetchBlogs}'),
      onResponse: (blogs) {
        return blogs;
      },
    );
  }
}
