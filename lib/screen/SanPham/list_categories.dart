import 'package:do_an_di_dong/screen/SanPham/list_product.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:do_an_di_dong/values/list.dart';
import 'package:flutter/material.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
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
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Container(
                          //   decoration: BoxDecoration(
                          //     color: AppColors.secondColor,
                          //     borderRadius: const BorderRadius.all(
                          //       Radius.circular(10),
                          //     ),
                          //     boxShadow: [
                          //       BoxShadow(
                          //           color: Colors.black.withOpacity(0.5),
                          //           blurRadius: 3,
                          //           spreadRadius: 0,
                          //           offset: const Offset(0, 4)),
                          //     ],
                          //   ),
                          //   height: 40,
                          //   width: 40,
                          //   child: IconButton(
                          //     icon: const Icon(Icons.arrow_back_ios_rounded),
                          //     iconSize: 20,
                          //     onPressed: () {
                          //       Navigator.of(context)
                          //           .popUntil((route) => route.isFirst);
                          //     },
                          //   ),
                          // ),
                          // Container(
                          //   decoration: BoxDecoration(
                          //       color: AppColors.secondColor,
                          //       borderRadius: const BorderRadius.all(
                          //         Radius.circular(10),
                          //       ),
                          //       boxShadow: [
                          //         BoxShadow(
                          //             color: Colors.black.withOpacity(0.5),
                          //             blurRadius: 3,
                          //             spreadRadius: 0,
                          //             offset: const Offset(0, 4)),
                          //       ]),
                          //   height: 40,
                          //   width: 40,
                          //   child: IconButton(
                          //     icon: const Icon(Icons.save_alt_rounded),
                          //     iconSize: 25,
                          //     onPressed: () {},
                          //   ),
                          // ),

                          Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 70, vertical: 15),
                              child: const Text(
                                "Tất Cả Danh Mục",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Phần Thân Màn Hình
            Expanded(
              child: SizedBox(
                height: 10,
                child: ListView.builder(
                  itemCount: lstDanhMuc.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding:
                          const EdgeInsets.only(top: 20, left: 22, right: 22),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(237, 255, 223, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              child: Text(
                                lstDanhMuc[index],
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.black54),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ListProduct(),
                                    ));
                              },
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Container(
//               padding: const EdgeInsets.only(top: 20, left: 22, right: 22),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     width: double.infinity,
//                     height: 50,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor:
//                               const Color.fromRGBO(237, 255, 223, 1),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15))),
//                       onPressed: () {},
//                       child: const Text(
//                         "Hoa Quả",
//                         style: TextStyle(fontSize: 20, color: Colors.black54),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             )