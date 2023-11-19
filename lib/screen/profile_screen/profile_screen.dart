import 'package:do_an_di_dong/consts/consts.dart';
import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:do_an_di_dong/widgets_common/customIconButton.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 220,
        backgroundColor: Color.fromARGB(255, 134, 193, 133),
        leading: Container(
          alignment: Alignment.center,
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            color: const Color.fromARGB(255, 238, 235, 235),
            onPressed: () {
              // Handle back button press
            },
          ),
        ),
        title: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            verticalDirection: VerticalDirection
                .up, // Change to VerticalDirection.down if needed
            children: [
              Text(
                'Van Tuan',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              SizedBox(height: 4),
              ClipOval(
                child: Image.asset(
                  AppAssets.welcom_screen,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              SizedBox(height: 4),
              Text(
                'Profile',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            alignment: Alignment.center,
            child: IconButton(
              icon: Icon(Icons.edit),
              color: Color.fromARGB(255, 255, 255, 255),
              onPressed: () {
                // Handle edit button press
              },
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            customIconButton(
              onPress: () {
                // Your onPress logic here
              },
              color: AppColors.primaryColor,
              textColor: Colors.white,
              content: 'Quên Mật Khẩu',
              leftIcon: Icons.lock,
              rightIcon: Icons.arrow_forward,
            ).box.width(context.screenWidth - 80).make(),
            SizedBox(height: 20),
            customIconButton(
              onPress: () {
                // Your onPress logic here
              },
              color: AppColors.primaryColor,
              textColor: Colors.white,
              content: 'Trợ giúp',
              leftIcon: Icons.support_agent,
              rightIcon: Icons.arrow_forward,
            ).box.width(context.screenWidth - 80).make(),
            SizedBox(height: 20),
            customIconButton(
              onPress: () {
                // Your onPress logic here
              },
              color: AppColors.primaryColor,
              textColor: Colors.white,
              content: 'Lịch Sử',
              leftIcon: Icons.history_edu,
              rightIcon: Icons.arrow_forward,
            ).box.width(context.screenWidth - 80).make(),
            SizedBox(height: 20),
            customIconButton(
              onPress: () {
                // Your onPress logic here
              },
              color: AppColors.primaryColor,
              textColor: Colors.white,
              content: 'Đăng Xuất',
              leftIcon: Icons.logout,
              rightIcon: Icons.arrow_forward,
            ).box.width(context.screenWidth - 80).make(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
