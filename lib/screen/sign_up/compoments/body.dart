import 'package:do_an_di_dong/consts/consts.dart';
import 'package:do_an_di_dong/navigationbar.dart';
import 'package:do_an_di_dong/screen/home_screen.dart';
import 'package:do_an_di_dong/services/firestore_services.dart';
import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:do_an_di_dong/values/app_size.dart';
import 'package:do_an_di_dong/widgets_common/our_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class body extends StatefulWidget {
  const body({super.key});

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  final FireAuthService auth = FireAuthService();

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            child: Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    AppAssets.sign_in,
                    width: 250,
                    height: 150,
                  ),
                ),
                UserInput(),
                const SizedBox(height: 20),
                EmailInput(),
                const SizedBox(height: 20),
                PasswordInput(),
                const SizedBox(height: 20),
                // ourButton(
                //   color: AppColors.primaryColor,
                //   title: "Đăng Ký",
                //   textColor: Colors.white,
                //   onPress: singUp,
                // ).box.width(context.screenWidth - 100).make(),
                InkWell(
                  onTap: singUp,
                  child: Container(
                    width: 290,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Đăng Ký",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void singUp() async {
    String username = usernameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    User? user = await auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print('Đăng Ký Thành Công');
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const BottomNav(),
          ));
    } else {
      print('Có Lỗi Xảy Ra');
    }
  }

  TextFormField UserInput() {
    return TextFormField(
      controller: usernameController,
      decoration: InputDecoration(
          labelText: "Tên đăng nhập",
          hintText: "Tên đăng nhập",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 45,
            vertical: 20,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: AppColors.textColor),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: AppColors.textColor),
            gapPadding: 10,
          )),
    );
  }

  TextFormField PasswordInput() {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
          labelText: "Mật Khẩu",
          hintText: "Mật Khẩu",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 45,
            vertical: 20,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: AppColors.textColor),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: AppColors.textColor),
            gapPadding: 10,
          )),
    );
  }

  TextFormField EmailInput() {
    return TextFormField(
      controller: emailController,
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Nhập Email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 45,
            vertical: 20,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: AppColors.textColor),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: AppColors.textColor),
            gapPadding: 10,
          )),
    );
  }
}
