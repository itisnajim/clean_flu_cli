import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../view_model/view_model_provider.dart';
import '../view_model/base_view_model.dart';
import '../../entity/effect/effect.dart';
import 'screen_state.dart';

class BaseScreen<STATE extends ScreenState,
    VIEW_MODEL extends BaseViewModel<STATE>> extends HookConsumerWidget {
  final AutoDisposeStateNotifierProvider<VIEW_MODEL, STATE> viewModelProvider;

  final Function(Effect effect) onEffect;

  final bool hideDefaultLoading;
  final Widget body;

  const BaseScreen({
    Key? key,
    required this.viewModelProvider,
    this.hideDefaultLoading = false,
    required this.body,
    this.onEffect = noopEffectHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showLoading =
        ref.watch(viewModelProvider.select((state) => state.showLoading));
    final viewModel = ref.watch(viewModelProvider.notifier);

    useEffect(() {
      final subscription = viewModel.effectStream.listen((effect) {
        if (effect != null) onEffect(effect);
      });

      return subscription.cancel;
    }, [viewModel.effectStream]);

    ///
    /// Adding [reRenderKey] makes sure that any time the language is changed,
    /// the current pages gets completely re-rendered.
    ///
    final reRenderKey = ValueKey(Localizations.localeOf(context).languageCode);

    return ViewModelProvider(
      key: reRenderKey,
      provider: viewModelProvider,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          body,
          if (showLoading && !hideDefaultLoading)
            const Positioned.fill(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}

noopEffectHandler(Effect effect) {}
