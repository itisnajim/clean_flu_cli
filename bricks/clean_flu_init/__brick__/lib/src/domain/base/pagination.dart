import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';

@freezed
abstract class Pagination implements _$Pagination {
  const Pagination._();

  const factory Pagination({
    required int page,
    @Default(20) int size,
  }) = _Pagination;

  int get from => (page - 1) * size;
  int get to => from + (size - 1);

  factory Pagination.first() => const Pagination(page: 1);

  @override
  String toString() {
    return 'page: $page, size: $size, from: $from, to: $to';
  }
}
