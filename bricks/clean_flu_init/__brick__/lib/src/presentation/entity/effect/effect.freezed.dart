// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Effect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, Duration duration,
            bool closeCurrentSnackbar, SnackBarBehavior behavior)
        snackBar,
    required TResult Function(
            String? text, bool barrierDismissible, bool shouldDismissAnyOpen)
        showLoadingAlert,
    required TResult Function() hideKeyboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult? Function(
            String? text, bool barrierDismissible, bool shouldDismissAnyOpen)?
        showLoadingAlert,
    TResult? Function()? hideKeyboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult Function(
            String? text, bool barrierDismissible, bool shouldDismissAnyOpen)?
        showLoadingAlert,
    TResult Function()? hideKeyboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarEffect value) snackBar,
    required TResult Function(ShowLoadingAlertEffect value) showLoadingAlert,
    required TResult Function(HideKeyboardEffect value) hideKeyboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnackBarEffect value)? snackBar,
    TResult? Function(ShowLoadingAlertEffect value)? showLoadingAlert,
    TResult? Function(HideKeyboardEffect value)? hideKeyboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarEffect value)? snackBar,
    TResult Function(ShowLoadingAlertEffect value)? showLoadingAlert,
    TResult Function(HideKeyboardEffect value)? hideKeyboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EffectCopyWith<$Res> {
  factory $EffectCopyWith(Effect value, $Res Function(Effect) then) =
      _$EffectCopyWithImpl<$Res, Effect>;
}

/// @nodoc
class _$EffectCopyWithImpl<$Res, $Val extends Effect>
    implements $EffectCopyWith<$Res> {
  _$EffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SnackBarEffectCopyWith<$Res> {
  factory _$$SnackBarEffectCopyWith(
          _$SnackBarEffect value, $Res Function(_$SnackBarEffect) then) =
      __$$SnackBarEffectCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String text,
      Duration duration,
      bool closeCurrentSnackbar,
      SnackBarBehavior behavior});
}

/// @nodoc
class __$$SnackBarEffectCopyWithImpl<$Res>
    extends _$EffectCopyWithImpl<$Res, _$SnackBarEffect>
    implements _$$SnackBarEffectCopyWith<$Res> {
  __$$SnackBarEffectCopyWithImpl(
      _$SnackBarEffect _value, $Res Function(_$SnackBarEffect) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? duration = null,
    Object? closeCurrentSnackbar = null,
    Object? behavior = null,
  }) {
    return _then(_$SnackBarEffect(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      closeCurrentSnackbar: null == closeCurrentSnackbar
          ? _value.closeCurrentSnackbar
          : closeCurrentSnackbar // ignore: cast_nullable_to_non_nullable
              as bool,
      behavior: null == behavior
          ? _value.behavior
          : behavior // ignore: cast_nullable_to_non_nullable
              as SnackBarBehavior,
    ));
  }
}

/// @nodoc

class _$SnackBarEffect implements SnackBarEffect {
  _$SnackBarEffect(
      {required this.text,
      this.duration = const Duration(seconds: 4),
      this.closeCurrentSnackbar = true,
      this.behavior = SnackBarBehavior.floating});

  @override
  final String text;
  @override
  @JsonKey()
  final Duration duration;
  @override
  @JsonKey()
  final bool closeCurrentSnackbar;
  @override
  @JsonKey()
  final SnackBarBehavior behavior;

  @override
  String toString() {
    return 'Effect.snackBar(text: $text, duration: $duration, closeCurrentSnackbar: $closeCurrentSnackbar, behavior: $behavior)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackBarEffect &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.closeCurrentSnackbar, closeCurrentSnackbar) ||
                other.closeCurrentSnackbar == closeCurrentSnackbar) &&
            (identical(other.behavior, behavior) ||
                other.behavior == behavior));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, text, duration, closeCurrentSnackbar, behavior);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnackBarEffectCopyWith<_$SnackBarEffect> get copyWith =>
      __$$SnackBarEffectCopyWithImpl<_$SnackBarEffect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, Duration duration,
            bool closeCurrentSnackbar, SnackBarBehavior behavior)
        snackBar,
    required TResult Function(
            String? text, bool barrierDismissible, bool shouldDismissAnyOpen)
        showLoadingAlert,
    required TResult Function() hideKeyboard,
  }) {
    return snackBar(text, duration, closeCurrentSnackbar, behavior);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult? Function(
            String? text, bool barrierDismissible, bool shouldDismissAnyOpen)?
        showLoadingAlert,
    TResult? Function()? hideKeyboard,
  }) {
    return snackBar?.call(text, duration, closeCurrentSnackbar, behavior);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult Function(
            String? text, bool barrierDismissible, bool shouldDismissAnyOpen)?
        showLoadingAlert,
    TResult Function()? hideKeyboard,
    required TResult orElse(),
  }) {
    if (snackBar != null) {
      return snackBar(text, duration, closeCurrentSnackbar, behavior);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarEffect value) snackBar,
    required TResult Function(ShowLoadingAlertEffect value) showLoadingAlert,
    required TResult Function(HideKeyboardEffect value) hideKeyboard,
  }) {
    return snackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnackBarEffect value)? snackBar,
    TResult? Function(ShowLoadingAlertEffect value)? showLoadingAlert,
    TResult? Function(HideKeyboardEffect value)? hideKeyboard,
  }) {
    return snackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarEffect value)? snackBar,
    TResult Function(ShowLoadingAlertEffect value)? showLoadingAlert,
    TResult Function(HideKeyboardEffect value)? hideKeyboard,
    required TResult orElse(),
  }) {
    if (snackBar != null) {
      return snackBar(this);
    }
    return orElse();
  }
}

abstract class SnackBarEffect implements Effect {
  factory SnackBarEffect(
      {required final String text,
      final Duration duration,
      final bool closeCurrentSnackbar,
      final SnackBarBehavior behavior}) = _$SnackBarEffect;

  String get text;
  Duration get duration;
  bool get closeCurrentSnackbar;
  SnackBarBehavior get behavior;
  @JsonKey(ignore: true)
  _$$SnackBarEffectCopyWith<_$SnackBarEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowLoadingAlertEffectCopyWith<$Res> {
  factory _$$ShowLoadingAlertEffectCopyWith(_$ShowLoadingAlertEffect value,
          $Res Function(_$ShowLoadingAlertEffect) then) =
      __$$ShowLoadingAlertEffectCopyWithImpl<$Res>;
  @useResult
  $Res call({String? text, bool barrierDismissible, bool shouldDismissAnyOpen});
}

/// @nodoc
class __$$ShowLoadingAlertEffectCopyWithImpl<$Res>
    extends _$EffectCopyWithImpl<$Res, _$ShowLoadingAlertEffect>
    implements _$$ShowLoadingAlertEffectCopyWith<$Res> {
  __$$ShowLoadingAlertEffectCopyWithImpl(_$ShowLoadingAlertEffect _value,
      $Res Function(_$ShowLoadingAlertEffect) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? barrierDismissible = null,
    Object? shouldDismissAnyOpen = null,
  }) {
    return _then(_$ShowLoadingAlertEffect(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      barrierDismissible: null == barrierDismissible
          ? _value.barrierDismissible
          : barrierDismissible // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldDismissAnyOpen: null == shouldDismissAnyOpen
          ? _value.shouldDismissAnyOpen
          : shouldDismissAnyOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowLoadingAlertEffect implements ShowLoadingAlertEffect {
  _$ShowLoadingAlertEffect(
      {this.text,
      this.barrierDismissible = false,
      this.shouldDismissAnyOpen = true});

  @override
  final String? text;
  @override
  @JsonKey()
  final bool barrierDismissible;
  @override
  @JsonKey()
  final bool shouldDismissAnyOpen;

  @override
  String toString() {
    return 'Effect.showLoadingAlert(text: $text, barrierDismissible: $barrierDismissible, shouldDismissAnyOpen: $shouldDismissAnyOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowLoadingAlertEffect &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.barrierDismissible, barrierDismissible) ||
                other.barrierDismissible == barrierDismissible) &&
            (identical(other.shouldDismissAnyOpen, shouldDismissAnyOpen) ||
                other.shouldDismissAnyOpen == shouldDismissAnyOpen));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, text, barrierDismissible, shouldDismissAnyOpen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowLoadingAlertEffectCopyWith<_$ShowLoadingAlertEffect> get copyWith =>
      __$$ShowLoadingAlertEffectCopyWithImpl<_$ShowLoadingAlertEffect>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, Duration duration,
            bool closeCurrentSnackbar, SnackBarBehavior behavior)
        snackBar,
    required TResult Function(
            String? text, bool barrierDismissible, bool shouldDismissAnyOpen)
        showLoadingAlert,
    required TResult Function() hideKeyboard,
  }) {
    return showLoadingAlert(text, barrierDismissible, shouldDismissAnyOpen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult? Function(
            String? text, bool barrierDismissible, bool shouldDismissAnyOpen)?
        showLoadingAlert,
    TResult? Function()? hideKeyboard,
  }) {
    return showLoadingAlert?.call(
        text, barrierDismissible, shouldDismissAnyOpen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult Function(
            String? text, bool barrierDismissible, bool shouldDismissAnyOpen)?
        showLoadingAlert,
    TResult Function()? hideKeyboard,
    required TResult orElse(),
  }) {
    if (showLoadingAlert != null) {
      return showLoadingAlert(text, barrierDismissible, shouldDismissAnyOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarEffect value) snackBar,
    required TResult Function(ShowLoadingAlertEffect value) showLoadingAlert,
    required TResult Function(HideKeyboardEffect value) hideKeyboard,
  }) {
    return showLoadingAlert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnackBarEffect value)? snackBar,
    TResult? Function(ShowLoadingAlertEffect value)? showLoadingAlert,
    TResult? Function(HideKeyboardEffect value)? hideKeyboard,
  }) {
    return showLoadingAlert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarEffect value)? snackBar,
    TResult Function(ShowLoadingAlertEffect value)? showLoadingAlert,
    TResult Function(HideKeyboardEffect value)? hideKeyboard,
    required TResult orElse(),
  }) {
    if (showLoadingAlert != null) {
      return showLoadingAlert(this);
    }
    return orElse();
  }
}

abstract class ShowLoadingAlertEffect implements Effect {
  factory ShowLoadingAlertEffect(
      {final String? text,
      final bool barrierDismissible,
      final bool shouldDismissAnyOpen}) = _$ShowLoadingAlertEffect;

  String? get text;
  bool get barrierDismissible;
  bool get shouldDismissAnyOpen;
  @JsonKey(ignore: true)
  _$$ShowLoadingAlertEffectCopyWith<_$ShowLoadingAlertEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideKeyboardEffectCopyWith<$Res> {
  factory _$$HideKeyboardEffectCopyWith(_$HideKeyboardEffect value,
          $Res Function(_$HideKeyboardEffect) then) =
      __$$HideKeyboardEffectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideKeyboardEffectCopyWithImpl<$Res>
    extends _$EffectCopyWithImpl<$Res, _$HideKeyboardEffect>
    implements _$$HideKeyboardEffectCopyWith<$Res> {
  __$$HideKeyboardEffectCopyWithImpl(
      _$HideKeyboardEffect _value, $Res Function(_$HideKeyboardEffect) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HideKeyboardEffect implements HideKeyboardEffect {
  _$HideKeyboardEffect();

  @override
  String toString() {
    return 'Effect.hideKeyboard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideKeyboardEffect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, Duration duration,
            bool closeCurrentSnackbar, SnackBarBehavior behavior)
        snackBar,
    required TResult Function(
            String? text, bool barrierDismissible, bool shouldDismissAnyOpen)
        showLoadingAlert,
    required TResult Function() hideKeyboard,
  }) {
    return hideKeyboard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult? Function(
            String? text, bool barrierDismissible, bool shouldDismissAnyOpen)?
        showLoadingAlert,
    TResult? Function()? hideKeyboard,
  }) {
    return hideKeyboard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult Function(
            String? text, bool barrierDismissible, bool shouldDismissAnyOpen)?
        showLoadingAlert,
    TResult Function()? hideKeyboard,
    required TResult orElse(),
  }) {
    if (hideKeyboard != null) {
      return hideKeyboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarEffect value) snackBar,
    required TResult Function(ShowLoadingAlertEffect value) showLoadingAlert,
    required TResult Function(HideKeyboardEffect value) hideKeyboard,
  }) {
    return hideKeyboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SnackBarEffect value)? snackBar,
    TResult? Function(ShowLoadingAlertEffect value)? showLoadingAlert,
    TResult? Function(HideKeyboardEffect value)? hideKeyboard,
  }) {
    return hideKeyboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarEffect value)? snackBar,
    TResult Function(ShowLoadingAlertEffect value)? showLoadingAlert,
    TResult Function(HideKeyboardEffect value)? hideKeyboard,
    required TResult orElse(),
  }) {
    if (hideKeyboard != null) {
      return hideKeyboard(this);
    }
    return orElse();
  }
}

abstract class HideKeyboardEffect implements Effect {
  factory HideKeyboardEffect() = _$HideKeyboardEffect;
}
