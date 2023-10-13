// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsScreenState {
  bool get showLoading => throw _privateConstructorUsedError;
  List<String> get namesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsScreenStateCopyWith<SettingsScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsScreenStateCopyWith<$Res> {
  factory $SettingsScreenStateCopyWith(
          SettingsScreenState value, $Res Function(SettingsScreenState) then) =
      _$SettingsScreenStateCopyWithImpl<$Res, SettingsScreenState>;
  @useResult
  $Res call({bool showLoading, List<String> namesList});
}

/// @nodoc
class _$SettingsScreenStateCopyWithImpl<$Res, $Val extends SettingsScreenState>
    implements $SettingsScreenStateCopyWith<$Res> {
  _$SettingsScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showLoading = null,
    Object? namesList = null,
  }) {
    return _then(_value.copyWith(
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      namesList: null == namesList
          ? _value.namesList
          : namesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SsettingsScreenStateCopyWith<$Res>
    implements $SettingsScreenStateCopyWith<$Res> {
  factory _$$SsettingsScreenStateCopyWith(_$SsettingsScreenState value,
          $Res Function(_$SsettingsScreenState) then) =
      __$$SsettingsScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showLoading, List<String> namesList});
}

/// @nodoc
class __$$SsettingsScreenStateCopyWithImpl<$Res>
    extends _$SettingsScreenStateCopyWithImpl<$Res, _$SsettingsScreenState>
    implements _$$SsettingsScreenStateCopyWith<$Res> {
  __$$SsettingsScreenStateCopyWithImpl(_$SsettingsScreenState _value,
      $Res Function(_$SsettingsScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showLoading = null,
    Object? namesList = null,
  }) {
    return _then(_$SsettingsScreenState(
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      namesList: null == namesList
          ? _value._namesList
          : namesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SsettingsScreenState implements SsettingsScreenState {
  const _$SsettingsScreenState(
      {required this.showLoading, required final List<String> namesList})
      : _namesList = namesList;

  @override
  final bool showLoading;
  final List<String> _namesList;
  @override
  List<String> get namesList {
    if (_namesList is EqualUnmodifiableListView) return _namesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_namesList);
  }

  @override
  String toString() {
    return 'SettingsScreenState(showLoading: $showLoading, namesList: $namesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SsettingsScreenState &&
            (identical(other.showLoading, showLoading) ||
                other.showLoading == showLoading) &&
            const DeepCollectionEquality()
                .equals(other._namesList, _namesList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showLoading,
      const DeepCollectionEquality().hash(_namesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SsettingsScreenStateCopyWith<_$SsettingsScreenState> get copyWith =>
      __$$SsettingsScreenStateCopyWithImpl<_$SsettingsScreenState>(
          this, _$identity);
}

abstract class SsettingsScreenState implements SettingsScreenState {
  const factory SsettingsScreenState(
      {required final bool showLoading,
      required final List<String> namesList}) = _$SsettingsScreenState;

  @override
  bool get showLoading;
  @override
  List<String> get namesList;
  @override
  @JsonKey(ignore: true)
  _$$SsettingsScreenStateCopyWith<_$SsettingsScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
