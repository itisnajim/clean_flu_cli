import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

class MasterScreen extends ConsumerStatefulWidget {
  const MasterScreen({
    Key? key,
    required this.child,
  }) : super(key: key ?? const ValueKey('Master'));

  final StatefulNavigationShell child;

  @override
  ConsumerState<MasterScreen> createState() => _MasterScreenState();
}

class _MasterScreenState extends ConsumerState<MasterScreen> {
  int selectedNavigation = 0;

  @override
  void initState() {
    super.initState();
    selectedNavigation = widget.child.currentIndex;
  }

  void _goBranch(int index) {
    widget.child.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == widget.child.currentIndex,
    );
    setState(() {
      selectedNavigation = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const destinations = [
      NavigationDestination(
        label: 'Names',
        icon: Icon(Icons.list_outlined),
        selectedIcon: Icon(Icons.list),
      ),
      NavigationDestination(
        label: 'Settings',
        icon: Icon(Icons.settings_outlined),
        selectedIcon: Icon(Icons.settings),
      ),
    ];

    final navRailTheme = Theme.of(context).navigationRailTheme;

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: AdaptiveLayout(
          primaryNavigation: SlotLayout(
            config: <Breakpoint, SlotLayoutConfig>{
              Breakpoints.mediumAndUp: SlotLayout.from(
                inAnimation: AdaptiveScaffold.leftOutIn,
                key: const Key('Primary Navigation Standard'),
                builder: (_) => AdaptiveScaffold.standardNavigationRail(
                  padding: EdgeInsets.zero,
                  selectedIndex: selectedNavigation,
                  onDestinationSelected: _goBranch,
                  leading: const Icon(Icons.menu),
                  destinations: destinations
                      .map(AdaptiveScaffold.toRailDestination)
                      .toList(),
                  backgroundColor: navRailTheme.backgroundColor,
                  selectedIconTheme: navRailTheme.selectedIconTheme,
                  unselectedIconTheme: navRailTheme.unselectedIconTheme,
                  selectedLabelTextStyle: navRailTheme.selectedLabelTextStyle,
                  unSelectedLabelTextStyle:
                      navRailTheme.unselectedLabelTextStyle,
                ),
              ),
            },
          ),
          body: SlotLayout(
            config: <Breakpoint, SlotLayoutConfig>{
              Breakpoints.standard: SlotLayout.from(
                key: const Key('Body Standard'),
                builder: (_) => widget.child,
              ),
            },
          ),
          bottomNavigation: SlotLayout(
            config: <Breakpoint, SlotLayoutConfig>{
              Breakpoints.small: SlotLayout.from(
                key: const Key('Bottom Navigation Small'),
                inAnimation: AdaptiveScaffold.bottomToTop,
                outAnimation: AdaptiveScaffold.topToBottom,
                builder: (_) => AdaptiveScaffold.standardBottomNavigationBar(
                  destinations: destinations,
                  currentIndex: selectedNavigation,
                  onDestinationSelected: _goBranch,
                ),
              )
            },
          ),
        ),
      ),
    );
  }
}
