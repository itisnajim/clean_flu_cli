// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $masterRoute,
      $namesRoute,
      $settingsRoute,
    ];

RouteBase get $masterRoute => StatefulShellRouteData.$route(
      parentNavigatorKey: MasterRoute.$parentNavigatorKey,
      factory: $MasterRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: NamesBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/names',
              factory: $NamesRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: SettingsBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/settings',
              factory: $SettingsRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $MasterRouteExtension on MasterRoute {
  static MasterRoute _fromState(GoRouterState state) => const MasterRoute();
}

extension $NamesRouteExtension on NamesRoute {
  static NamesRoute _fromState(GoRouterState state) => const NamesRoute();

  String get location => GoRouteData.$location(
        '/names',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $namesRoute => GoRouteData.$route(
      path: '/names',
      factory: $NamesRouteExtension._fromState,
    );

RouteBase get $settingsRoute => GoRouteData.$route(
      path: '/settings',
      factory: $SettingsRouteExtension._fromState,
    );
