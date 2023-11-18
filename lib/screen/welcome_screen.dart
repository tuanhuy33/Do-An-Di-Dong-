import 'package:do_an_di_dong/consts/consts.dart';
import 'package:do_an_di_dong/screen/sign_in/sign_in_screen.dart';
import 'package:do_an_di_dong/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'user/user_profile.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _navigatetouserprofile();
  }

  _navigateSignInScreen() async {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        ));
  }

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
            Align(
              child: Column(
                children: [
                  ourButton(
                    color: AppColors.secondColor,
                    title: "Đăng Nhập",
                    textColor: AppColors.primaryColor,
                    onPress: () {},
                  ).box.width(context.screenWidth - 100).make(),
                  SizedBox(height: 5),
                  ourButton(
                    color: AppColors.secondColor,
                    title: "Đăng Ký",
                    textColor: AppColors.primaryColor,
                    onPress: () {},
                  ).box.width(context.screenWidth - 100).make(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
