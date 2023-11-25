import 'package:do_an_di_dong/screen/support_screen/compoments/body.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondColor,
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'Trợ Giúp',
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
