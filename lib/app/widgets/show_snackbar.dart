import 'package:flutter/material.dart';
import 'package:kasifim_app/app/widgets/build_space.dart';
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
            content: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildSpace(),
                  Text(
                    message,
                    style: TextStyle(color: Colors.white),
                  ),
                  buildSpace()
                ],
              ),
            ),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.red,
          ));
}
