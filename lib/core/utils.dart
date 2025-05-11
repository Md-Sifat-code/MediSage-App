// lib/core/utils.dart

import 'package:flutter/material.dart';

class Utils {
  // Utility function to show toast/snackbars
  static void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  // Utility function to validate email
  static bool isValidEmail(String email) {
    final emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegExp.hasMatch(email);
  }

  // Utility function to validate phone number (basic check)
  static bool isValidPhoneNumber(String phone) {
    final phoneRegExp = RegExp(r'^\+?[1-9]\d{1,14}$');
    return phoneRegExp.hasMatch(phone);
  }
}
