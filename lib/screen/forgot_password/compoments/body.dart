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
          Form(
            child: Column(
              children: [
                PasswordInput(),
                SizedBox(height: 20),
                PasswordInput(),
                SizedBox(height: 20),
                ConfirmPasswordInput(),
                SizedBox(height: 20),
                ourButton(
                  color: AppColors.secondColor,
                  title: "Hoàn Tất",
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

  TextFormField NewPasswordInput() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Mật Khẩu Mới",
          hintText: "Mật Khẩu Mới",
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

TextFormField ConfirmPasswordInput() {
  return TextFormField(
    decoration: InputDecoration(
        labelText: "Xác Nhận Mật Khẩu",
        hintText: "Xác Nhận Mật Khẩu",
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
