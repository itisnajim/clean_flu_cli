// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_listenable.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerListenableHash() => r'3ad425b3d071b4eb356d3851fd770d41389e9e5f';

/// A [Listenable] implemented via an [AsyncNotifier].
/// [GoRouter] accepts a [Listenable] to refresh its internal state, so this is kinda mandatory.
///
/// An alternative would be to register a dependency via an Inherited Widget, but that's kinda a no-go for Riverpod.
///
/// To sync Riverpod' state with this Listener, we simply accept and call a single callback on authentication change.
/// Obviously, more logic could be implemented here, this is meant to be a simple example.
///
/// I kinda like this example, as this allows to centralize global redirecting logic in one class.
///
/// SIDE NOTES.
/// This might look overcomplicated at a first glance;
/// Instead, this method aims to follow some good some good practices:
///   1. It doesn't require us to pass [Ref](s) around
///   2. It works as a complete replacement for [ChangeNotifier], as it still implements [Listenable]
///   3. It allows for listening to multiple providers, or add more logic if needed
///
/// Copied from [RouterListenable].
@ProviderFor(RouterListenable)
final routerListenableProvider =
    AutoDisposeAsyncNotifierProvider<RouterListenable, void>.internal(
  RouterListenable.new,
  name: r'routerListenableProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$routerListenableHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RouterListenable = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
