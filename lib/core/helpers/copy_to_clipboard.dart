import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';

Future<void> copyToClipboard(BuildContext context, String data) async {
  Clipboard.setData(ClipboardData(text: data)).then((_) {
    // ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(content: Text("Email address copied to clipboard")));
    showSnackBar(context, message: 'Order ID ($data) copied to clipboard');
  });
}
