import 'package:flutter/material.dart';

class SnackBarUtil {
  static showNormalSnackBar(String message) {
    return SnackBar(
      content: Text(message),
    );
  }

  static showSnackBarWithAction(
      @required String message, @required String actionButtonText) {
    return SnackBar(
      content: Text(message),
      action: SnackBarAction(
          label: actionButtonText,
          onPressed: () {
            if (actionButtonText.toLowerCase().contains("close", 0)) {}
          }),
    );
  }
}
