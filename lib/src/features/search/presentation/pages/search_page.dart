import 'package:ag_test/src/features/search/presentation/cubit/search_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ag_test/src/core/di/injector.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Search heirarchy'),
      ),
      body: BlocProvider(
        create: (context) => getIt<SearchCubit>(),
        child: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            return Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    helperText: '',
                    alignLabelWithHint: true,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      child: Icon(Icons.search),
                    ),
                  ),
                  onChanged: context.read<SearchCubit>().onSearchChanged,
                ),
                ElevatedButton(
                  child: const Text('Search'),
                  onPressed: () => context.read<SearchCubit>().search(),
                ),
                state.status.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  success: (message) => Text(state.path),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
