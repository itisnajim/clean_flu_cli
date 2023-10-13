// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  String? get message => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? code, Object? error)
        server,
    required TResult Function(String message, Object? error) localDatabase,
    required TResult Function(String message, Object? error) hardware,
    required TResult Function(String? message, Object? error) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? code, Object? error)? server,
    TResult? Function(String message, Object? error)? localDatabase,
    TResult? Function(String message, Object? error)? hardware,
    TResult? Function(String? message, Object? error)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? code, Object? error)? server,
    TResult Function(String message, Object? error)? localDatabase,
    TResult Function(String message, Object? error)? hardware,
    TResult Function(String? message, Object? error)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_LocalDatabase value) localDatabase,
    required TResult Function(_Hardware value) hardware,
    required TResult Function(_Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_LocalDatabase value)? localDatabase,
    TResult? Function(_Hardware value)? hardware,
    TResult? Function(_Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_LocalDatabase value)? localDatabase,
    TResult Function(_Hardware value)? hardware,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message, Object? error});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message!
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$_ServerCopyWith(_$_Server value, $Res Function(_$_Server) then) =
      __$$_ServerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? code, Object? error});
}

/// @nodoc
class __$$_ServerCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_Server>
    implements _$$_ServerCopyWith<$Res> {
  __$$_ServerCopyWithImpl(_$_Server _value, $Res Function(_$_Server) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Server(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_Server implements _Server {
  const _$_Server({required this.message, this.code, this.error});

  @override
  final String message;
  @override
  final String? code;
  @override
  final Object? error;

  @override
  String toString() {
    return 'Failure.server(message: $message, code: $code, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Server &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, code, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerCopyWith<_$_Server> get copyWith =>
      __$$_ServerCopyWithImpl<_$_Server>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? code, Object? error)
        server,
    required TResult Function(String message, Object? error) localDatabase,
    required TResult Function(String message, Object? error) hardware,
    required TResult Function(String? message, Object? error) unknown,
  }) {
    return server(message, code, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? code, Object? error)? server,
    TResult? Function(String message, Object? error)? localDatabase,
    TResult? Function(String message, Object? error)? hardware,
    TResult? Function(String? message, Object? error)? unknown,
  }) {
    return server?.call(message, code, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? code, Object? error)? server,
    TResult Function(String message, Object? error)? localDatabase,
    TResult Function(String message, Object? error)? hardware,
    TResult Function(String? message, Object? error)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, code, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_LocalDatabase value) localDatabase,
    required TResult Function(_Hardware value) hardware,
    required TResult Function(_Unknown value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_LocalDatabase value)? localDatabase,
    TResult? Function(_Hardware value)? hardware,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_LocalDatabase value)? localDatabase,
    TResult Function(_Hardware value)? hardware,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server implements Failure {
  const factory _Server(
      {required final String message,
      final String? code,
      final Object? error}) = _$_Server;

  @override
  String get message;
  String? get code;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_ServerCopyWith<_$_Server> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocalDatabaseCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$_LocalDatabaseCopyWith(
          _$_LocalDatabase value, $Res Function(_$_LocalDatabase) then) =
      __$$_LocalDatabaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Object? error});
}

/// @nodoc
class __$$_LocalDatabaseCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_LocalDatabase>
    implements _$$_LocalDatabaseCopyWith<$Res> {
  __$$_LocalDatabaseCopyWithImpl(
      _$_LocalDatabase _value, $Res Function(_$_LocalDatabase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = freezed,
  }) {
    return _then(_$_LocalDatabase(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_LocalDatabase implements _LocalDatabase {
  const _$_LocalDatabase({required this.message, this.error});

  @override
  final String message;
  @override
  final Object? error;

  @override
  String toString() {
    return 'Failure.localDatabase(message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalDatabase &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalDatabaseCopyWith<_$_LocalDatabase> get copyWith =>
      __$$_LocalDatabaseCopyWithImpl<_$_LocalDatabase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? code, Object? error)
        server,
    required TResult Function(String message, Object? error) localDatabase,
    required TResult Function(String message, Object? error) hardware,
    required TResult Function(String? message, Object? error) unknown,
  }) {
    return localDatabase(message, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? code, Object? error)? server,
    TResult? Function(String message, Object? error)? localDatabase,
    TResult? Function(String message, Object? error)? hardware,
    TResult? Function(String? message, Object? error)? unknown,
  }) {
    return localDatabase?.call(message, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? code, Object? error)? server,
    TResult Function(String message, Object? error)? localDatabase,
    TResult Function(String message, Object? error)? hardware,
    TResult Function(String? message, Object? error)? unknown,
    required TResult orElse(),
  }) {
    if (localDatabase != null) {
      return localDatabase(message, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_LocalDatabase value) localDatabase,
    required TResult Function(_Hardware value) hardware,
    required TResult Function(_Unknown value) unknown,
  }) {
    return localDatabase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_LocalDatabase value)? localDatabase,
    TResult? Function(_Hardware value)? hardware,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return localDatabase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_LocalDatabase value)? localDatabase,
    TResult Function(_Hardware value)? hardware,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (localDatabase != null) {
      return localDatabase(this);
    }
    return orElse();
  }
}

abstract class _LocalDatabase implements Failure {
  const factory _LocalDatabase(
      {required final String message, final Object? error}) = _$_LocalDatabase;

  @override
  String get message;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_LocalDatabaseCopyWith<_$_LocalDatabase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HardwareCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$_HardwareCopyWith(
          _$_Hardware value, $Res Function(_$_Hardware) then) =
      __$$_HardwareCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Object? error});
}

/// @nodoc
class __$$_HardwareCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_Hardware>
    implements _$$_HardwareCopyWith<$Res> {
  __$$_HardwareCopyWithImpl(
      _$_Hardware _value, $Res Function(_$_Hardware) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = freezed,
  }) {
    return _then(_$_Hardware(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_Hardware implements _Hardware {
  const _$_Hardware({required this.message, this.error});

  @override
  final String message;
  @override
  final Object? error;

  @override
  String toString() {
    return 'Failure.hardware(message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hardware &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HardwareCopyWith<_$_Hardware> get copyWith =>
      __$$_HardwareCopyWithImpl<_$_Hardware>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? code, Object? error)
        server,
    required TResult Function(String message, Object? error) localDatabase,
    required TResult Function(String message, Object? error) hardware,
    required TResult Function(String? message, Object? error) unknown,
  }) {
    return hardware(message, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? code, Object? error)? server,
    TResult? Function(String message, Object? error)? localDatabase,
    TResult? Function(String message, Object? error)? hardware,
    TResult? Function(String? message, Object? error)? unknown,
  }) {
    return hardware?.call(message, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? code, Object? error)? server,
    TResult Function(String message, Object? error)? localDatabase,
    TResult Function(String message, Object? error)? hardware,
    TResult Function(String? message, Object? error)? unknown,
    required TResult orElse(),
  }) {
    if (hardware != null) {
      return hardware(message, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_LocalDatabase value) localDatabase,
    required TResult Function(_Hardware value) hardware,
    required TResult Function(_Unknown value) unknown,
  }) {
    return hardware(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_LocalDatabase value)? localDatabase,
    TResult? Function(_Hardware value)? hardware,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return hardware?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_LocalDatabase value)? localDatabase,
    TResult Function(_Hardware value)? hardware,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (hardware != null) {
      return hardware(this);
    }
    return orElse();
  }
}

abstract class _Hardware implements Failure {
  const factory _Hardware(
      {required final String message, final Object? error}) = _$_Hardware;

  @override
  String get message;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_HardwareCopyWith<_$_Hardware> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnknownCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$_UnknownCopyWith(
          _$_Unknown value, $Res Function(_$_Unknown) then) =
      __$$_UnknownCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Object? error});
}

/// @nodoc
class __$$_UnknownCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_Unknown>
    implements _$$_UnknownCopyWith<$Res> {
  __$$_UnknownCopyWithImpl(_$_Unknown _value, $Res Function(_$_Unknown) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Unknown(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_Unknown implements _Unknown {
  const _$_Unknown({this.message, this.error});

  @override
  final String? message;
  @override
  final Object? error;

  @override
  String toString() {
    return 'Failure.unknown(message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unknown &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      __$$_UnknownCopyWithImpl<_$_Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? code, Object? error)
        server,
    required TResult Function(String message, Object? error) localDatabase,
    required TResult Function(String message, Object? error) hardware,
    required TResult Function(String? message, Object? error) unknown,
  }) {
    return unknown(message, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? code, Object? error)? server,
    TResult? Function(String message, Object? error)? localDatabase,
    TResult? Function(String message, Object? error)? hardware,
    TResult? Function(String? message, Object? error)? unknown,
  }) {
    return unknown?.call(message, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? code, Object? error)? server,
    TResult Function(String message, Object? error)? localDatabase,
    TResult Function(String message, Object? error)? hardware,
    TResult Function(String? message, Object? error)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_LocalDatabase value) localDatabase,
    required TResult Function(_Hardware value) hardware,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_LocalDatabase value)? localDatabase,
    TResult? Function(_Hardware value)? hardware,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_LocalDatabase value)? localDatabase,
    TResult Function(_Hardware value)? hardware,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements Failure {
  const factory _Unknown({final String? message, final Object? error}) =
      _$_Unknown;

  @override
  String? get message;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}
