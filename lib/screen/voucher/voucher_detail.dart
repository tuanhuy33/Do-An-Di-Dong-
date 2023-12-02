import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class VoucherDetail extends StatelessWidget {
  final String? title;
  final dynamic data;
  const VoucherDetail({Key? key, required this.title, this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  // image: DecorationImage(
                  //     image: AssetImage("assets/images/Rectangle_32.png"),
                  //     fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 22, right: 22),
                child: Column(
                  children: [
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              child: IconButton(
                                icon: const Icon(Icons.arrow_back_rounded),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(90, 0, 10, 5),
                              child: const Text(
                                "Chi Tiết",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Visibility(
                              visible: false,
                              child: SizedBox(
                                child: Text(title!),
                              ),
                            ),
                          ],
                        ),
                        CouponCard(
                          backgroundColor: Colors.white,
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
                                Text(
                                  '${data['Tieu_De']}',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: AppColors.primaryColor),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: Row(
                                    children: [
                                      const Text("HSD   "),
                                      Text("${data['Han_SD']}")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 22, right: 22),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                          text:
                              "Chi Tiết Khuyến Mãi:                                            ",
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
                          text: "- Hạn sử dụng: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16),
                        ),
                        TextSpan(
                          text:
                              "${data['Han_SD']}                                                ",
                          style: const TextStyle(color: Colors.black),
                        ),
                        const TextSpan(
                          text: "- Mã khuyến mãi: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16),
                        ),
                        TextSpan(
                          text:
                              "${data['Ma_Khuyen_Mai']}                                                           ",
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
