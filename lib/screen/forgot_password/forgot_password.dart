import 'package:do_an_di_dong/screen/forgot_password/compoments/body.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondColor,
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'Đổi Mật Khẩu',
            style: TextStyle(color: AppColors.titleColor),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: AppColors.textColor,
          onPressed: () {},
        ),
      ),
      body: body(),
    );
  }
}
