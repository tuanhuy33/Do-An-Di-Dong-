import 'package:do_an_di_dong/screen/forgot_password/compoments/body.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          'Đổi Mật Khẩu',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: const body(),
    );
  }
}
