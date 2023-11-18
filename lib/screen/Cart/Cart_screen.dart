import 'package:do_an_di_dong/consts/consts.dart';
import 'package:do_an_di_dong/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import '../user/user_profile.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _navigatetouserprofile();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondColor,
      appBar: buildAppBar(context),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.close), // X icon
        onPressed: () {},
      ),
      title: Column(
        children: [
          Text(
            'Giỏ Hàng',
            style: TextStyle(color: AppColors.secondColor),
          )
        ],
      ),
    );
  }
}
