import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  bool get isRTL => Directionality.of(this) == TextDirection.rtl;

  void showSnackBar({
    required Widget content,
    Duration? duration,
    SnackBarBehavior? behavior,
    bool closeCurrentSnackbar = true,
  }) {
    if (closeCurrentSnackbar) {
      ScaffoldMessenger.of(this).hideCurrentSnackBar();
    }

    final snackBar = SnackBar(
      content: content,
      duration: duration ?? const Duration(milliseconds: 4000),
      behavior: behavior,
    );

    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
