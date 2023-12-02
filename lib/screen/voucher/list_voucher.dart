import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_an_di_dong/screen/voucher/voucher_detail.dart';
import 'package:do_an_di_dong/services/firestore_services.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:do_an_di_dong/values/list.dart';
import 'package:do_an_di_dong/widgets_common/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:coupon_uikit/coupon_uikit.dart';

class ListVoucher extends StatelessWidget {
  const ListVoucher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: AppColors.primaryColor,
        title: const Text('Khuyến Mãi'),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            // Stack(
            //   children: [
            //     Container(
            //       padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
            //       height: MediaQuery.of(context).size.height * 0.2,
            //       width: MediaQuery.of(context).size.width,
            //       decoration: const BoxDecoration(
            //         color: AppColors.primaryColor,
            //         borderRadius: BorderRadius.only(
            //             bottomLeft: Radius.circular(30),
            //             bottomRight: Radius.circular(30)),
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
            //             //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Container(
            //                 decoration: BoxDecoration(
            //                   color: AppColors.secondColor,
            //                   borderRadius: const BorderRadius.all(
            //                     Radius.circular(10),
            //                   ),
            //                   boxShadow: [
            //                     BoxShadow(
            //                         color: Colors.black.withOpacity(0.5),
            //                         blurRadius: 3,
            //                         spreadRadius: 0,
            //                         offset: const Offset(0, 4)),
            //                   ],
            //                 ),
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
            //               // Container(
            //               //   decoration: BoxDecoration(
            //               //       color: AppColors.secondColor,
            //               //       borderRadius: const BorderRadius.all(
            //               //         Radius.circular(10),
            //               //       ),
            //               //       boxShadow: [
            //               //         BoxShadow(
            //               //             color: Colors.black.withOpacity(0.5),
            //               //             blurRadius: 3,
            //               //             spreadRadius: 0,
            //               //             offset: const Offset(0, 4)),
            //               //       ]),
            //               //   height: 40,
            //               //   width: 40,
            //               //   child: IconButton(
            //               //     icon: const Icon(Icons.save_alt_rounded),
            //               //     iconSize: 25,
            //               //     onPressed: () {},
            //               //   ),
            //               // ),
            //               Container(
            //                   padding: const EdgeInsets.only(left: 70, top: 15),
            //                   child: const Text(
            //                     "Khuyến Mãi",
            //                     style: TextStyle(
            //                         fontSize: 25,
            //                         fontWeight: FontWeight.bold,
            //                         color: Colors.white),
            //                   )),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 22, right: 22),
                child: StreamBuilder(
                  stream: FirestoreServices.getVoucher(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: loadingIndicator(),
                      );
                    } else if (snapshot.data!.docs.isEmpty) {
                      return const Center(
                        child: Text('Không Tìm Thấy Mã Khuyến Mãi!!'),
                      );
                    } else {
                      var data = snapshot.data!.docs;
                      return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => VoucherDetail(
                                          title:
                                              "${data[index]['Ma_Khuyen_Mai']}",
                                          data: data[index],
                                        ),
                                      ));
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: CouponCard(
                                    curveAxis: Axis.vertical,
                                    border:
                                        const BorderSide(color: Colors.black38),
                                    firstChild: Container(
                                      alignment: Alignment.center,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    121, 172, 120, 1),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        child: const Text(
                                          "Sử Dụng",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    secondChild: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Column(
                                        children: [
                                          Text(
                                            '${data[index]['Tieu_De']}',
                                            style: const TextStyle(
                                                fontSize: 21,
                                                color: AppColors.primaryColor),
                                          ),
                                          Visibility(
                                            visible: false,
                                            child: Text(
                                                '${data[index]['Ma_Khuyen_Mai']}'),
                                          ),
                                          Container(
                                            padding:
                                                const EdgeInsets.only(top: 40),
                                            child: Row(
                                              children: [
                                                const Text("HSD   "),
                                                Text("${data[index]['Han_SD']}")
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
