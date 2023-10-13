import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../foundation/extension/build_context_ext.dart';
import '../../base/exceptions/unhandled_effect_exception.dart';
import '../../base/screen/base_screen.dart';
import '{{#snakeCase}}{{name}}{{/snakeCase}}_screen_view_model.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Screen extends HookConsumerWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelProvider = {{#camelCase}}{{name}}{{/camelCase}}ScreenViewModelProvider;
    final viewModel = ref.read(viewModelProvider.notifier);
    final state = ref.watch(viewModelProvider);

    return BaseScreen(
      viewModelProvider: viewModelProvider,
      hideDefaultLoading: false,
      body: Scaffold(
        appBar: AppBar(
          title: const Text('{{#pascalCase}}{{name}}{{/pascalCase}}'),
        ),
        body: Container(),
      ),
      onEffect: (effect) {
        effect.maybeMap(
          snackBar: (e) {
            context.showSnackBar(
              content: Text(e.text),
              duration: e.duration,
              behavior: e.behavior,
            );
          },
          orElse: () => throw UnhandledEffectException(effect),
        );
      },
    );
  }
}
