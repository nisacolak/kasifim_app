import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';

void showSuccessSnackbar(String message) {
  // example snackBar
  OneContext().showSnackBar(
      builder: (_) => SnackBar(
            content: Text(
              message,
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.green,
          ));
}

void showErrorSnackbar(String message) {
  // example snackBar
  OneContext().showSnackBar(
      builder: (_) => SnackBar(
            content: Text(
              message,
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red,
          ));
}
