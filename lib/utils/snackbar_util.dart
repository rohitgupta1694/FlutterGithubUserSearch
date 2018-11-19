import 'package:flutter/material.dart';

class SnackBarUtil {
  static showNormalSnackBar(String message) => SnackBar(
        content: Text(message),
      );

  static showSnackBarWithAction(String message, String actionButtonText) =>
      SnackBar(
        content: Text(message),
        action: SnackBarAction(
            label: actionButtonText,
            onPressed: () {
              if (actionButtonText.toLowerCase().contains("close", 0)) {}
            }),
      );
}
