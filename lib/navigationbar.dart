import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:do_an_di_dong/screen/SanPham/list_categories.dart';
import 'package:do_an_di_dong/screen/SanPham/list_product.dart';
import 'package:do_an_di_dong/screen/home_screen.dart';
import 'package:do_an_di_dong/screen/user/edit_profile.dart';
import 'package:do_an_di_dong/screen/voucher/list_voucher.dart';
import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final items = [
    const Icon(
      Icons.home_filled,
      size: 30,
    ),
    const Icon(
      Icons.category_outlined,
      size: 30,
    ),
    Image.asset(
      AppAssets.icon_voucher,
      fit: BoxFit.fill,
    ),
    const Icon(
      Icons.person,
      size: 30,
    )
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: getslectedWidget(index: index)),
      bottomNavigationBar: CurvedNavigationBar(
          // index: _selectedIndex,
          height: 50,
          backgroundColor: Colors.transparent,
          color: AppColors.primaryColor,
          onTap: (selectedIndex) {
            setState(() {
              index = selectedIndex;
            });
          },
          items: items),
    );
  }
}

getslectedWidget({required int index}) {
  Widget widget;
  switch (index) {
    case 0:
      widget = const HomeScreen();
      break;
    case 1:
      widget = const ListCategory();
      break;
    case 2:
      widget = const ListVoucher();
      break;
    case 3:
      widget = const EditProfile();
      break;
    default:
      widget = const HomeScreen();
  }
  return widget;
}
