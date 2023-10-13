import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.server({
    required String message,
    String? code,
    Object? error,
  }) = _Server;

  const factory Failure.localDatabase({
    required String message,
    Object? error,
  }) = _LocalDatabase;

  const factory Failure.hardware({
    required String message,
    Object? error,
  }) = _Hardware;

  const factory Failure.unknown({
    String? message,
    Object? error,
  }) = _Unknown;
}
