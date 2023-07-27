import 'package:flutter/material.dart';

ElevatedButton CustomELevatedButton({
  required Function() fun,
  required String title,
}) {
  return ElevatedButton(
    style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
      Colors.black87,
    )),
    onPressed: fun,
    child: Text(
      title,
      style: TextStyle(
        fontSize: 15,
      ),
    ),
  );
}
