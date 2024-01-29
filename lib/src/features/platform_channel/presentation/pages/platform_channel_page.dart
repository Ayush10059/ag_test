import 'package:ag_test/src/core/di/injector.dart';
import 'package:ag_test/src/features/platform_channel/presentation/cubit/platform_channel_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PlatformChannelPage extends StatelessWidget {
  const PlatformChannelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Platform Channel Example'),
      ),
      body: BlocProvider(
        create: (context) => getIt<PlatformChannelCubit>(),
        child: BlocBuilder<PlatformChannelCubit, PlatformChannelState>(
          builder: (context, state) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () =>
                      context.read<PlatformChannelCubit>().invokeMethod(),
                  child: const Text('Invoke Method'),
                ),
                state.status.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  success: (message) => Text(state.platformMessage),
                  error: (error) => Text(error ?? ''),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
