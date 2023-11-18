import 'package:do_an_di_dong/consts/consts.dart';
import 'package:do_an_di_dong/screen/SanPham/product_detail.dart';
import 'package:do_an_di_dong/values/list.dart';
import 'package:do_an_di_dong/widgets_common/categorieswidget.dart';
import 'package:do_an_di_dong/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:do_an_di_dong/screen/home_screen.dart';
import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'user/user_profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _navigatetouserprofile();
  }

  // _navigatetouserprofile() async {
  //   await Future.delayed(const Duration(milliseconds: 3500), () {});
  //   Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => const UserProfilePage(),
  //       ));
  // }

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
                    icon: const Icon(Icons.search_outlined),
                    iconSize: 25,
                    onPressed: () {},
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 55),
                  child: Text(
                    "Heathy Food",
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
                    icon: const Icon(Icons.shopping_bag_outlined),
                    iconSize: 25,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const CategoriesWidget(),

            SizedBox(
              height: 100,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: lsSlider.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 300,
                          width: 200,
                          child: Image.asset(
                            lsSlider[index],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: const Text(
                "Sản Phẩm Hot",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProductDetail(),
                          ));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),
                      margin: const EdgeInsets.symmetric(
                          vertical: 60, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 4,
                              offset: const Offset(0, 4))
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            child: Image.asset(
                              AppAssets.img_rau_muong,
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 20, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Rau Muống Thuỷ Canh",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20, right: 50),
                                child: Text(
                                  "10.000",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              IconButton(
                                  icon:
                                      const Icon(Icons.shopping_cart_checkout),
                                  color: AppColors.primaryColor,
                                  onPressed: () {})
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
