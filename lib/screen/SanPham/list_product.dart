import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:do_an_di_dong/consts/consts.dart';
import 'package:do_an_di_dong/screen/SanPham/list_categories.dart';
import 'package:do_an_di_dong/screen/SanPham/product_detail.dart';
import 'package:do_an_di_dong/screen/profile_screen/edit_profile.dart';
import 'package:do_an_di_dong/screen/voucher/list_voucher.dart';
import 'package:do_an_di_dong/services/firestore_services.dart';
import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:do_an_di_dong/screen/SanPham/Itemwidget.dart';
import 'package:do_an_di_dong/screen/SanPham/categorieswidget.dart';
import 'package:do_an_di_dong/values/list.dart';
import 'package:do_an_di_dong/widgets_common/loading_indicator.dart';
import 'package:flutter/material.dart';

class ListProduct extends StatelessWidget {
  final String? title;
  const ListProduct({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: AppColors.primaryColor,
        title: Text(title!),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 22, right: 22),
        child: Column(
          children: [
            // Appbar
            // Row(
            //   children: [
            //     Container(
            //       decoration: BoxDecoration(
            //           color: AppColors.secondColor,
            //           borderRadius: const BorderRadius.all(
            //             Radius.circular(10),
            //           ),
            //           boxShadow: [
            //             BoxShadow(
            //                 color: Colors.black.withOpacity(0.5),
            //                 blurRadius: 3,
            //                 spreadRadius: 0,
            //                 offset: const Offset(0, 4)),
            //           ]),
            //       height: 40,
            //       width: 40,
            //       child: IconButton(
            //         icon: const Icon(Icons.arrow_back_ios_rounded),
            //         iconSize: 20,
            //         onPressed: () {
            //           Navigator.of(context).popUntil((route) => route.isFirst);
            //         },
            //       ),
            //     ),
            //     const Padding(
            //       padding: EdgeInsets.symmetric(horizontal: 55),
            //       child: Text(
            //         "Rau Củ",
            //         style: TextStyle(
            //           fontSize: 25,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ),
            //     Container(
            //       decoration: BoxDecoration(
            //           color: AppColors.secondColor,
            //           borderRadius: const BorderRadius.all(
            //             Radius.circular(10),
            //           ),
            //           boxShadow: [
            //             BoxShadow(
            //                 color: Colors.black.withOpacity(0.5),
            //                 blurRadius: 3,
            //                 spreadRadius: 0,
            //                 offset: const Offset(0, 4)),
            //           ]),
            //       height: 40,
            //       width: 40,
            //       child: IconButton(
            //         icon: const Icon(Icons.search_rounded),
            //         iconSize: 25,
            //         onPressed: () {},
            //       ),
            //     ),
            //     const SizedBox(width: 35),
            //     Container(
            //       decoration: BoxDecoration(
            //           color: AppColors.secondColor,
            //           borderRadius: const BorderRadius.all(
            //             Radius.circular(10),
            //           ),
            //           boxShadow: [
            //             BoxShadow(
            //                 color: Colors.black.withOpacity(0.5),
            //                 blurRadius: 3,
            //                 spreadRadius: 0,
            //                 offset: const Offset(0, 4)),
            //           ]),
            //       height: 40,
            //       width: 40,
            //       child: IconButton(
            //         icon: const Icon(Icons.shopping_bag_outlined),
            //         iconSize: 25,
            //         onPressed: () {},
            //       ),
            //     ),
            //   ],
            // ),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const CategoriesWidget(),
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
                      child: Text("Không Tìm Thấy Sản Phẩm !!"),
                    );
                  } else {
                    var data = snapshot.data!.docs;
                    return GridView.builder(
                      padding: const EdgeInsets.only(top: 1),
                      itemCount: data.length,
                      // physics: const ScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              mainAxisExtent: 240),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductDetail(
                                    title: "${data[index]['Ten_SP']}",
                                    data: data[index].data(),
                                    id: data[index].id,
                                  ),
                                ));
                          },
                          child: Container(
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 15,
                            ),
                            //margin: const EdgeInsets.symmetric(horizontal: 1),
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
                                  child: Image.network(
                                    data[index]['Hinh_Anh'],
                                    height: 100,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 20),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "${data[index]['Ten_SP']}",
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${data[index]['Gia']}",
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: AppColors.primaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    IconButton(
                                        icon: const Icon(
                                            Icons.shopping_cart_checkout),
                                        color: AppColors.primaryColor,
                                        onPressed: () {})
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
            //const ItemWidget(),
          ],
        ),
      ),
    );
  }
}
