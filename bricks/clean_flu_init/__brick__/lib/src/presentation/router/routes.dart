import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../destination/master/master_screen.dart';
import '../destination/names/names_screen.dart';
import '../destination/settings/settings_screen.dart';

part 'routes.g.dart';

final rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'rootNavigatorKey');

final namesNavigatorKey = GlobalKey<NavigatorState>();

class NamesBranch extends StatefulShellBranchData {
  static final $navigatorKey = namesNavigatorKey;
}

final settingsNavigatorKey = GlobalKey<NavigatorState>();

class SettingsBranch extends StatefulShellBranchData {
  static final $navigatorKey = settingsNavigatorKey;
}

final masterNavigatorKey = GlobalKey<NavigatorState>();

@TypedStatefulShellRoute<MasterRoute>(
  branches: [
    TypedStatefulShellBranch<NamesBranch>(
      routes: [
        TypedGoRoute<NamesRoute>(
          path: NamesRoute.path,
        ),
      ],
    ),
    TypedStatefulShellBranch<SettingsBranch>(
      routes: [
        TypedGoRoute<SettingsRoute>(
          path: SettingsRoute.path,
        ),
      ],
    ),
  ],
)
class MasterRoute extends StatefulShellRouteData {
  static final $navigatorKey = masterNavigatorKey;
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  const MasterRoute();

  @override
  Widget builder(context, state, navigationShell) {
    return MasterScreen(
      child: navigationShell,
    );
  }
}

@TypedGoRoute<NamesRoute>(path: NamesRoute.path)
class NamesRoute extends GoRouteData {
  static const String path = '/names';

  const NamesRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: NamesScreen(),
    );
  }
}

@TypedGoRoute<SettingsRoute>(path: SettingsRoute.path)
class SettingsRoute extends GoRouteData {
  static const String path = '/settings';

  const SettingsRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: SettingsScreen(),
    );
  }
}
