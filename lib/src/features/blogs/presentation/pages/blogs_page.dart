import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'package:ag_test/src/core/di/injector.dart';
import 'package:ag_test/src/features/blogs/data/models/blog_response_model.dart';
import 'package:ag_test/src/features/blogs/presentation/cubit/blogs_cubit.dart';
import 'package:ag_test/src/features/blogs/presentation/widgets/blog_container.dart';
import 'package:ag_test/src/features/blogs/presentation/widgets/error_indicator_widget.dart';

@RoutePage()
class BlogsPage extends StatelessWidget {
  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Ambition Guru Blogs'),
      ),
      body: BlocProvider(
        create: (context) => getIt<BlogsCubit>()..getBlogs(),
        child: BlocBuilder<BlogsCubit, BlogsState>(
          builder: (context, state) {
            return RefreshIndicator(
              onRefresh: () async {
                context.read<BlogsCubit>().refreshBlogs();
              },

              /// Pagination
              child: PagedListView(
                pagingController: state.blogsPagingController,
                builderDelegate: PagedChildBuilderDelegate<Datum>(
                  itemBuilder: (context, data, index) =>
                      BlogContainer(data: data),
                  firstPageErrorIndicatorBuilder: (context) =>
                      PageErrorIndicatorWidget(
                    error: state.blogsPagingController.error,
                    onPressed: () => state.blogsPagingController.refresh(),
                  ),
                  noItemsFoundIndicatorBuilder: (context) => const Center(
                    child: Text('Empty List'),
                  ),
                  newPageProgressIndicatorBuilder: (context) => const SizedBox(
                    height: 40,
                    child: Center(child: CircularProgressIndicator()),
                  ),
                  firstPageProgressIndicatorBuilder: (context) =>
                      const Center(child: CircularProgressIndicator()),
                  newPageErrorIndicatorBuilder: (context) =>
                      PageErrorIndicatorWidget(
                    error: state.blogsPagingController.error,
                    onPressed: () => state.blogsPagingController.refresh(),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
