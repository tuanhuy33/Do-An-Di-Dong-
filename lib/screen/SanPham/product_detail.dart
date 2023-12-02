import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_an_di_dong/consts/firebase_const.dart';
import 'package:do_an_di_dong/screen/cart/cart_view.dart';
import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String? title;
  final dynamic data;
  final String? id;
  const ProductDetail({Key? key, required this.title, this.data, this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
        backgroundColor: AppColors.primaryColor,
        actions: [
          IconButton(
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
        ],
      ),
      // Appbar
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            // Stack(
            //   children: [
            //     Container(
            //       padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
            //       height: MediaQuery.of(context).size.height * 0.4,
            //       width: MediaQuery.of(context).size.width,
            //       decoration: const BoxDecoration(
            //         color: AppColors.primaryColor,
            //         borderRadius: BorderRadius.only(
            //             bottomLeft: Radius.circular(50),
            //             bottomRight: Radius.circular(50)),
            //         // image: DecorationImage(
            //         //     image: AssetImage("assets/images/Rectangle_32.png"),
            //         //     fit: BoxFit.fill),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 70, left: 22, right: 22),
            //       child: Column(
            //         children: [
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: AppColors.secondColor,
            //                     borderRadius: const BorderRadius.all(
            //                       Radius.circular(10),
            //                     ),
            //                     boxShadow: [
            //                       BoxShadow(
            //                           color: Colors.black.withOpacity(0.5),
            //                           blurRadius: 3,
            //                           spreadRadius: 0,
            //                           offset: const Offset(0, 4)),
            //                     ]),
            //                 height: 40,
            //                 width: 40,
            //                 child: IconButton(
            //                   icon: const Icon(Icons.arrow_back_ios_rounded),
            //                   iconSize: 20,
            //                   onPressed: () {
            //                     Navigator.pop(context);
            //                   },
            //                 ),
            //               ),
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: AppColors.secondColor,
            //                     borderRadius: const BorderRadius.all(
            //                       Radius.circular(10),
            //                     ),
            //                     boxShadow: [
            //                       BoxShadow(
            //                           color: Colors.black.withOpacity(0.5),
            //                           blurRadius: 3,
            //                           spreadRadius: 0,
            //                           offset: const Offset(0, 4)),
            //                     ]),
            //                 height: 40,
            //                 width: 40,
            //                 child: IconButton(
            //                   icon: const Icon(Icons.shopping_bag_outlined),
            //                   iconSize: 25,
            //                   onPressed: () {
            //                     Navigator.push(
            //                         context,
            //                         MaterialPageRoute(
            //                           builder: (context) => const CartView(),
            //                         ));
            //                   },
            //                 ),
            //               ),
            //             ],
            //           ),
            //           // Phần thân màn hình
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            Container(
              margin: const EdgeInsets.all(5),
              child: Image.network(
                data['Hinh_Anh'],
                height: 300,
                width: double.infinity,
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 20, left: 22),
              child: Text(
                "${data['Ten_SP']}",
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.only(top: 5, right: 22),
              child: Text(
                "${data['Gia']}",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 22, right: 22),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    const TextSpan(
                      text:
                          "Mô tả sản phẩm:                                            ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 22),
                    ),
                    // TextSpan(
                    //   text: "${data['Mo_Ta']}                       ",
                    //   style: const TextStyle(
                    //     color: Colors.black,
                    //   ),
                    // ),
                    const TextSpan(
                      text: "- Nguồn gốc xuất xứ: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                    TextSpan(
                      text:
                          "${data['NGXS']}                                                ",
                      style: const TextStyle(color: Colors.black),
                    ),
                    const TextSpan(
                      text: "- Nhà cung cấp: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                    TextSpan(
                      text:
                          "${data['NCC']}                                                           ",
                      style: const TextStyle(color: Colors.black),
                    ),
                    const TextSpan(
                      text: "- Quy cách đóng gói: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                    TextSpan(
                      text:
                          "${data['QCDG']}                                               ",
                      style: const TextStyle(color: Colors.black),
                    ),
                    const TextSpan(
                      text: "- Hướng dẫn bảo quản: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                    TextSpan(
                      text:
                          "${data['HDBQ']}                                              ",
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: InkWell(
                onTap: () async {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //      builder: (context) => const CartView(),
                  //     ));
                  FirebaseFirestore firestore = FirebaseFirestore.instance;
                  QuerySnapshot querySnapshot = await firestore
                      .collection('cartCollection')
                      .where('Ma_SP', isEqualTo: data['Ma_SP'])
                      .get();
                  if (querySnapshot.docs.isEmpty) {
                    await firestore.collection('cartCollection').add({
                      ...data,
                      'soluong': 1,
                    });
                  } else {
                    Object? updateItem = querySnapshot.docs.first.data();
                    int oldQt = (updateItem as Map<String, dynamic>)['soluong'];
                    await querySnapshot.docs.first.reference
                        .update({'soluong': ++oldQt});
                  }
                  // ignore: use_build_context_synchronously
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('đã thêm sản phẩm')));
                },
                child: Container(
                  width: 300,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Thêm Vào Giỏ Hàng",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      // floatingActionButton: Container(
      //   padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
      //   child: FloatingActionButton.extended(
      //     onPressed: () {},
      //     label: const Text("Thêm Vào Giỏ Hàng"),
      //     backgroundColor: AppColors.primaryColor,
      //   ),
      // ),
    );
  }
}
