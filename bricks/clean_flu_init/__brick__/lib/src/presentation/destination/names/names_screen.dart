import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'names_screen_view_model.dart';

class NamesScreen extends ConsumerWidget {
  const NamesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(namesScreenViewModelProvider.notifier);
    final state = ref.watch(namesScreenViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Names'),
      ),
      body: SafeArea(
        child: Center(
          child: state.showLoading
              ? const CircularProgressIndicator()
              : ListView.builder(
                  itemCount: state.names.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.names[index]),
                    );
                  },
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.fetchDataFromNetwork,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
