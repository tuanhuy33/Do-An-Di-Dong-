import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:do_an_di_dong/screen/SanPham/list_categories.dart';
import 'package:do_an_di_dong/screen/user/edit_profile.dart';
import 'package:do_an_di_dong/screen/voucher/list_voucher.dart';
import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:do_an_di_dong/widgets_common/Itemwidget.dart';
import 'package:do_an_di_dong/widgets_common/categorieswidget.dart';
import 'package:flutter/material.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 22, right: 22),
        child: Column(
          children: [
            // Appbar
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.secondColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 3,
                            spreadRadius: 0,
                            offset: const Offset(0, 4)),
                      ]),
                  height: 40,
                  width: 40,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_rounded),
                    iconSize: 20,
                    onPressed: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 55),
                  child: Text(
                    "Rau Củ",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.secondColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 3,
                            spreadRadius: 0,
                            offset: const Offset(0, 4)),
                      ]),
                  height: 40,
                  width: 40,
                  child: IconButton(
                    icon: const Icon(Icons.search_rounded),
                    iconSize: 25,
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 35),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.secondColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 3,
                            spreadRadius: 0,
                            offset: const Offset(0, 4)),
                      ]),
                  height: 40,
                  width: 40,
                  child: IconButton(
                    icon: const Icon(Icons.shopping_bag_outlined),
                    iconSize: 25,
                    onPressed: () {},
                  ),
                ),
              ],
            ),

            const CategoriesWidget(),
            const ItemWidget(),
          ],
        ),
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //     // index: _selectedIndex,
      //     height: 50,
      //     backgroundColor: Colors.transparent,
      //     color: AppColors.primaryColor,
      //     onTap: (selectedIndex) {
      //       setState(() {
      //         index = selectedIndex;
      //       });
      //     },
      //     items: items),
    );
  }
}




// Icon(
//             Icons.person_outline_outlined,
//             size: 30,
//             color: Colors.white,
//           )