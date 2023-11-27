import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:do_an_di_dong/values/list.dart';
import 'package:flutter/material.dart';
import 'package:coupon_uikit/coupon_uikit.dart';

class ListVoucher extends StatefulWidget {
  final data;
  const ListVoucher({Key? key, this.data}) : super(key: key);

  @override
  State<ListVoucher> createState() => _ListVoucherState();
}

class _ListVoucherState extends State<ListVoucher> {
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
                              ],
                            ),
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
                              padding: const EdgeInsets.only(left: 70, top: 15),
                              child: const Text(
                                "Khuyến Mãi",
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 22, right: 22),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: CouponCard(
                          curveAxis: Axis.vertical,
                          border: const BorderSide(color: Colors.black38),
                          firstChild: Container(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(121, 172, 120, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: const Text(
                                "Sử Dụng",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          secondChild: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              children: [
                                const Text(
                                  'Giảm 10.000 cho hoá đơn từ 90.000',
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: AppColors.primaryColor),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: const Row(
                                    children: [
                                      Text("HSD   "),
                                      Text("20/12/2023")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: CouponCard(
                          curveAxis: Axis.vertical,
                          border: const BorderSide(color: Colors.black38),
                          firstChild: Container(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(121, 172, 120, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: const Text(
                                "Sử Dụng",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          secondChild: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              children: [
                                const Text(
                                  'Giảm 10.000 cho hoá đơn từ 90.000',
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: AppColors.primaryColor),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: const Row(
                                    children: [
                                      Text("HSD   "),
                                      Text("20/12/2023")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: CouponCard(
                          curveAxis: Axis.vertical,
                          border: const BorderSide(color: Colors.black38),
                          firstChild: Container(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(121, 172, 120, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: const Text(
                                "Sử Dụng",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          secondChild: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              children: [
                                const Text(
                                  'Giảm 10.000 cho hoá đơn từ 90.000',
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: AppColors.primaryColor),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: const Row(
                                    children: [
                                      Text("HSD   "),
                                      Text("20/12/2023")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: CouponCard(
                          curveAxis: Axis.vertical,
                          border: const BorderSide(color: Colors.black38),
                          firstChild: Container(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(121, 172, 120, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: const Text(
                                "Sử Dụng",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          secondChild: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              children: [
                                const Text(
                                  'Giảm 10.000 cho hoá đơn từ 90.000',
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: AppColors.primaryColor),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: const Row(
                                    children: [
                                      Text("HSD   "),
                                      Text("20/12/2023")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: CouponCard(
                          curveAxis: Axis.vertical,
                          border: const BorderSide(color: Colors.black38),
                          firstChild: Container(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(121, 172, 120, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: const Text(
                                "Sử Dụng",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          secondChild: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              children: [
                                const Text(
                                  'Giảm 10.000 cho hoá đơn từ 90.000',
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: AppColors.primaryColor),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: const Row(
                                    children: [
                                      Text("HSD   "),
                                      Text("20/12/2023")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// Lỗi giá trị bị null đang fix
// Expanded(
//               child: SizedBox(
//                 height: 100,
//                 child: ListView.builder(
//                   itemCount: lsVoucher.length,
//                   itemBuilder: (context, index) {
//                     return Column(
//                       children: [
//                         CouponCard(
//                           curveAxis: Axis.vertical,
//                           border: const BorderSide(color: Colors.black38),
//                           firstChild: Container(
//                             alignment: Alignment.center,
//                             child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                   backgroundColor:
//                                       const Color.fromRGBO(121, 172, 120, 1),
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10))),
//                               child: const Text(
//                                 "Sử Dụng",
//                                 style: TextStyle(
//                                     fontSize: 15, color: Colors.white),
//                               ),
//                               onPressed: () {},
//                             ),
//                           ),
//                           secondChild: Container(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 10, vertical: 10),
//                             child: Column(
//                               children: [
//                                 Text(
//                                   "${widget.data["Content"]}",
//                                   style: const TextStyle(
//                                       fontSize: 21,
//                                       color: AppColors.primaryColor),
//                                 ),
//                                 // RichText(
//                                 //   text: const TextSpan(
//                                 //     children: <TextSpan>[
//                                 //       TextSpan(
//                                 //         text: "Giảm ",
//                                 //         style: TextStyle(
//                                 //           color: Colors.black,
//                                 //           fontSize: 20,
//                                 //         ),
//                                 //       ),
//                                 //       TextSpan(
//                                 //         text: "10.000 ",
//                                 //         style: TextStyle(
//                                 //           color: AppColors.primaryColor,
//                                 //           fontSize: 20,
//                                 //         ),
//                                 //       ),
//                                 //       TextSpan(
//                                 //         text: "cho hoá đơn từ ",
//                                 //         style: TextStyle(
//                                 //           color: Colors.black,
//                                 //           fontSize: 20,
//                                 //         ),
//                                 //       ),
//                                 //       TextSpan(
//                                 //         text: "90.000",
//                                 //         style: TextStyle(
//                                 //           color: AppColors.primaryColor,
//                                 //           fontSize: 20,
//                                 //         ),
//                                 //       )
//                                 //     ],
//                                 //   ),
//                                 // ),
//                                 Container(
//                                   padding: const EdgeInsets.only(top: 50),
//                                   child: Row(
//                                     children: [
//                                       const Text("HSD   "),
//                                       Text("${widget.data["HSD"]}")
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//               ),
//             ),

// thay đổi phần nội dung voucher 
// RichText(
                            //   text: const TextSpan(
                            //     children: <TextSpan>[
                            //       TextSpan(
                            //         text: "Giảm ",
                            //         style: TextStyle(
                            //           color: Colors.black,
                            //           fontSize: 20,
                            //         ),
                            //       ),
                            //       TextSpan(
                            //         text: "10.000 ",
                            //         style: TextStyle(
                            //           color: AppColors.primaryColor,
                            //           fontSize: 20,
                            //         ),
                            //       ),
                            //       TextSpan(
                            //         text: "cho hoá đơn từ ",
                            //         style: TextStyle(
                            //           color: Colors.black,
                            //           fontSize: 20,
                            //         ),
                            //       ),
                            //       TextSpan(
                            //         text: "90.000",
                            //         style: TextStyle(
                            //           color: AppColors.primaryColor,
                            //           fontSize: 20,
                            //         ),
                            //       )
                            //     ],
                            //   ),
                            // ),