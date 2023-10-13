import '../functions/fast_hash.dart' as fnc;

extension StringExt on String {
  bool get isBlank => trim().isEmpty;
  int get fastHash => fnc.fastHash(this);
  String get capitalized {
    if (isBlank) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
