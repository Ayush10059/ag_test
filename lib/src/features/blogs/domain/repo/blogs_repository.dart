import 'package:ag_test/src/core/typedefs/typedefs.dart';
import 'package:ag_test/src/features/blogs/data/models/blog_response_model.dart';

abstract class BlogsRepository {
  EitherResponse<BlogResponseModel> getBlogs();
}
