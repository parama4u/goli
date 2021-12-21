import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void ShowToast(BuildContext context, String content) {
  final _content = content==""?"Hello":content;
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(_content),
      //action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}