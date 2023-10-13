import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../l10n/res.dart';
import 'domain/di/domain_module.dart';
import 'presentation/di/theme_provider.dart';
import 'presentation/router/router_listenable.dart';
import 'presentation/router/routes.dart';
import 'presentation/theme/color_schemes.dart';

final initProvider = FutureProvider<void>(
  (ref) async {
    // TODO: any procedures to be executed before showing the master screen.
  },
);

class Application extends HookConsumerWidget {
  const Application({super.key});

  @override
  Widget build(context, ref) {
    final currentLocale = ref.watch(localizationProvider);
    debugPrint('build Application..');

    final themeMode = ref.watch(themeModeNotifierProvider);

    final notifier = ref.watch(routerListenableProvider.notifier);

    final router = useMemoized(
      () => GoRouter(
        navigatorKey: rootNavigatorKey,
        refreshListenable: notifier,
        initialLocation: NamesRoute.path, // Names screen
        debugLogDiagnostics: true,
        routes: $appRoutes,
        redirect: notifier.redirect,
      ),
      [notifier],
    );

    return MaterialApp.router(
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      localizationsDelegates: List.from(Resource.localizationsDelegates),
      supportedLocales: List.from(Resource.supportedLocales),
      locale: currentLocale,
      localeResolutionCallback: (locale, supportedLocales) {
        var appLocale = currentLocale;
        if (supportedLocales.any(
          (e) => locale?.languageCode.contains(e.toString()) == true,
        )) {
          appLocale = locale ?? Resource.supportedLocales.first;
          ref
              .read(localizationProvider.notifier)
              .setLanguageCode(appLocale.languageCode);
        }
        return appLocale;
      },
    );
  }
}
