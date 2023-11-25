// custom_button.dart

import 'package:flutter/material.dart';

Widget customIconButton(
    {VoidCallback? onPress,
    Color? color,
    Color? textColor,
    String? content,
    IconData? leftIcon,
    IconData? rightIcon}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(leftIcon),
        Text(content ?? '', style: TextStyle(color: textColor)),
        Icon(rightIcon),
      ],
    ),
  );
}
