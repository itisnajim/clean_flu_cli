// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'names_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NamesScreenState {
  bool get showLoading => throw _privateConstructorUsedError;
  List<String> get names => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NamesScreenStateCopyWith<NamesScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamesScreenStateCopyWith<$Res> {
  factory $NamesScreenStateCopyWith(
          NamesScreenState value, $Res Function(NamesScreenState) then) =
      _$NamesScreenStateCopyWithImpl<$Res, NamesScreenState>;
  @useResult
  $Res call({bool showLoading, List<String> names});
}

/// @nodoc
class _$NamesScreenStateCopyWithImpl<$Res, $Val extends NamesScreenState>
    implements $NamesScreenStateCopyWith<$Res> {
  _$NamesScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showLoading = null,
    Object? names = null,
  }) {
    return _then(_value.copyWith(
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NamesScreenStateCopyWith<$Res>
    implements $NamesScreenStateCopyWith<$Res> {
  factory _$$_NamesScreenStateCopyWith(
          _$_NamesScreenState value, $Res Function(_$_NamesScreenState) then) =
      __$$_NamesScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showLoading, List<String> names});
}

/// @nodoc
class __$$_NamesScreenStateCopyWithImpl<$Res>
    extends _$NamesScreenStateCopyWithImpl<$Res, _$_NamesScreenState>
    implements _$$_NamesScreenStateCopyWith<$Res> {
  __$$_NamesScreenStateCopyWithImpl(
      _$_NamesScreenState _value, $Res Function(_$_NamesScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showLoading = null,
    Object? names = null,
  }) {
    return _then(_$_NamesScreenState(
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_NamesScreenState implements _NamesScreenState {
  const _$_NamesScreenState(
      {required this.showLoading, required final List<String> names})
      : _names = names;

  @override
  final bool showLoading;
  final List<String> _names;
  @override
  List<String> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  @override
  String toString() {
    return 'NamesScreenState(showLoading: $showLoading, names: $names)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NamesScreenState &&
            (identical(other.showLoading, showLoading) ||
                other.showLoading == showLoading) &&
            const DeepCollectionEquality().equals(other._names, _names));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, showLoading, const DeepCollectionEquality().hash(_names));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NamesScreenStateCopyWith<_$_NamesScreenState> get copyWith =>
      __$$_NamesScreenStateCopyWithImpl<_$_NamesScreenState>(this, _$identity);
}

abstract class _NamesScreenState implements NamesScreenState {
  const factory _NamesScreenState(
      {required final bool showLoading,
      required final List<String> names}) = _$_NamesScreenState;

  @override
  bool get showLoading;
  @override
  List<String> get names;
  @override
  @JsonKey(ignore: true)
  _$$_NamesScreenStateCopyWith<_$_NamesScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
