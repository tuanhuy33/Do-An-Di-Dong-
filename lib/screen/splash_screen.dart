import 'package:do_an_di_dong/navigationbar.dart';
import 'package:do_an_di_dong/screen/welcome_screen.dart';
import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 3500), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const BottomNav(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashscreenColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                AppAssets.welcom_screen,
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
