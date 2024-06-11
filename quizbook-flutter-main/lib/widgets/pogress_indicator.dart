import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoadingProgressDialog extends StatelessWidget {
  static LoadingProgressDialog dialog = LoadingProgressDialog.internal();
  LoadingProgressDialog.internal({Key? key}) : super(key: key);
  factory LoadingProgressDialog() => dialog;
  BuildContext? context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  hideDialog() {
    Navigator.pop(context!);
  }
}
