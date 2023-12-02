import 'package:do_an_di_dong/screen/support_screen/compoments/body.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          'Trợ Giúp',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: const body(),
    );
  }
}
