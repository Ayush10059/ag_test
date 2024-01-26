import 'package:ag_test/src/core/base/base_repository.dart';
import 'package:ag_test/src/core/typedefs/typedefs.dart';
import 'package:ag_test/src/features/blogs/domain/repo/blogs_repository.dart';
import 'package:ag_test/src/features/blogs/data/models/blog_response_model.dart';
import 'package:ag_test/src/features/blogs/data/source/blogs_remote_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BlogsRepository)
class BlogsRepositoryImpl extends BaseRepository implements BlogsRepository {
  BlogsRepositoryImpl(this._remoteSource);

  final BlogsRemoteSource _remoteSource;
  @override
  EitherResponse<BlogResponseModel> getBlogs() => handleNetworkCall(
        call: _remoteSource.getBlogs(),
        onSuccess: (data) => BlogResponseModel.fromJson(data),
      );
}
