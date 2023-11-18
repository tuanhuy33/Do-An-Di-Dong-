import 'package:do_an_di_dong/screen/sign_up/compoments/body.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondColor,
        title: Text(
          'Đăng Ký',
          style: TextStyle(color: AppColors.titleColor),
        ),
      ),
      body: body(),
    );
  }
}
