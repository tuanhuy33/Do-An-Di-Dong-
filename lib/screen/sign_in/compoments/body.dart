import 'package:do_an_di_dong/consts/consts.dart';
import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:do_an_di_dong/values/app_size.dart';
import 'package:do_an_di_dong/widgets_common/our_button.dart';
import 'package:flutter/material.dart';

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              AppAssets.sign_in,
              width: 250,
              height: 250,
            ),
          ),
          Form(
            child: Column(
              children: [
                EmailInput(),
                SizedBox(height: 20),
                PasswordInput(),
                SizedBox(height: 20),
                ourButton(
                  color: AppColors.secondColor,
                  title: "Đăng Nhập",
                  textColor: AppColors.primaryColor,
                  onPress: () {},
                ).box.width(context.screenWidth - 100).make(),
              ],
            ),
          )
        ],
      ),
    );
  }

  TextFormField PasswordInput() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Mật Khẩu",
          hintText: "Mật Khẩu",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 45,
            vertical: 20,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: AppColors.textColor),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: AppColors.textColor),
            gapPadding: 10,
          )),
    );
  }

  TextFormField EmailInput() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Nhập Email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 45,
            vertical: 20,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: AppColors.textColor),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: AppColors.textColor),
            gapPadding: 10,
          )),
    );
  }
}
