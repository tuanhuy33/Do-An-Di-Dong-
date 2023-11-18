import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    // image: DecorationImage(
                    //     image: AssetImage("assets/images/Rectangle_32.png"),
                    //     fit: BoxFit.fill),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 22, right: 22),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                Navigator.pop(context);
                              },
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
                      // Phần thân màn hình
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: Image.asset(
                          AppAssets.img_rau_muong,
                          height: 170,
                          width: 150,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 20, left: 22),
              child: const Text(
                "Rau Muống Thuỷ Canh",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.only(top: 20, right: 22),
              child: const Text(
                "10.000 VND",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 22, right: 22),
              child: RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Mô tả sản phẩm: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                    TextSpan(
                      text:
                          "Rau được trồng và chăm sóc một cách khoa học ở các vườn rau đà lạt...                            ",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "Nguồn gốc xuất xứ: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                    TextSpan(
                      text:
                          "Việt Nam                                               ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: "Nhà cung cấp: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                    TextSpan(
                      text:
                          "Hợp tác xã nông nghiệp Tuấn Ngọc.                                              ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: "Quy cách đóng gói: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                    TextSpan(
                      text:
                          "Gói 300g+/-15g                                              ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: "Hướng dẫn bảo quản: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                    TextSpan(
                      text:
                          "Bảo quản ngăn mát tủ lạnh để đảm bảo độ tươi ngon.                                              ",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 75),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 300,
                  height: 80,
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
