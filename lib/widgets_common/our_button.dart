import 'package:do_an_di_dong/consts/consts.dart';
import 'package:flutter/material.dart';

Widget ourButton({onPress, color, textColor, String? title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: () {
      onPress;
    },
    child: title!.text.color(textColor).make(),
  );
}
