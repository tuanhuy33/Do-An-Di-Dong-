import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_an_di_dong/consts/consts.dart';
import 'package:do_an_di_dong/screen/SanPham/product_detail.dart';
import 'package:do_an_di_dong/screen/cart/cart_view.dart';
import 'package:do_an_di_dong/screen/sign_in/sign_in_screen.dart';
import 'package:do_an_di_dong/services/firestore_services.dart';
import 'package:do_an_di_dong/values/list.dart';
import 'package:do_an_di_dong/screen/SanPham/categorieswidget.dart';
import 'package:do_an_di_dong/widgets_common/loading_indicator.dart';
import 'package:do_an_di_dong/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:do_an_di_dong/values/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   // _navigatetouserprofile();
  // }

  // _navigateSignInScreen() async {
  //   Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => const SignInScreen(),
  //       ));
  // }

  @override
  final String title = "Sản Phẩm Hot";
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CartView(),
                          ));
                    },
                  ),
                ),
              ],
            ),
            const CategoriesWidget(),
            // slider
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
                top: 30,
              ),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                child: StreamBuilder(
              stream: FirestoreServices.getProducts(title),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: loadingIndicator(),
                  );
                } else if (snapshot.data!.docs.isEmpty) {
                  return const Center(
                    child: Text("Không Có Sản Phẩm !!"),
                  );
                } else {
                  var data = snapshot.data!.docs;
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetail(
                                  title: "${data[index]['Ten_SP']}",
                                  data: data[index],
                                ),
                              ));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          margin: const EdgeInsets.symmetric(
                              vertical: 60, horizontal: 5),
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
                                margin: const EdgeInsets.all(8),
                                child: Image.network(
                                  data[index]['Hinh_Anh'],
                                  height: 100,
                                  width: 150,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 10),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${data[index]['Ten_SP']}",
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 50, 0),
                                      child: Text(
                                        "${data[index]['Gia']}",
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: AppColors.primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                        icon: const Icon(
                                            Icons.shopping_cart_checkout),
                                        color: AppColors.primaryColor,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const CartView(),
                                              ));
                                        })
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            )),
          ],
        ),
      ),
    );
  }
}
