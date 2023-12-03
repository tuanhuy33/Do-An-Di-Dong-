import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_an_di_dong/screen/SanPham/product_detail.dart';
import 'package:do_an_di_dong/screen/order_payment/components/cart_item.dart';
import 'package:do_an_di_dong/screen/order_payment/order_payment_view.dart';
import 'package:do_an_di_dong/services/firestore_services.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:do_an_di_dong/widgets_common/loading_indicator.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  get title => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text('Giỏ hàng của (Username)'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            color: Colors.grey.withOpacity(0.5),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(Icons.check_box_outline_blank),
                ),
                const SizedBox(width: 5),
                RichText(
                  text: const TextSpan(
                    text: 'Chọn tất cả ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          StreamBuilder(
              stream: FirestoreServices.getProductsCart(),
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
                  return Column(
                    children: [
                      ...List.generate(
                          data.length,
                          (index) => CartItemWiget(
                                image: data[index]['Hinh_Anh'],
                                price: data[index]['Gia'].toString(),
                                productName: data[index]['Ten_SP'],
                                qty: data[index]['soluong'],
                                decrement: () async {
                                  FirebaseFirestore firestore =
                                      FirebaseFirestore.instance;
                                  QuerySnapshot querySnapshot = await firestore
                                      .collection('cartCollection')
                                      .where('Ma_SP',
                                          isEqualTo: data[index]['Ma_SP'])
                                      .get();
                                  if (querySnapshot.docs.isNotEmpty) {
                                    Object? updateItem =
                                        querySnapshot.docs.first.data();
                                    int oldQt = (updateItem
                                        as Map<String, dynamic>)['soluong'];
                                    await querySnapshot.docs.first.reference
                                        .update({'soluong': --oldQt});
                                  }
                                },
                                increment: () async {
                                  FirebaseFirestore firestore =
                                      FirebaseFirestore.instance;
                                  QuerySnapshot querySnapshot = await firestore
                                      .collection('cartCollection')
                                      .where('Ma_SP',
                                          isEqualTo: data[index]['Ma_SP'])
                                      .get();
                                  if (querySnapshot.docs.isNotEmpty) {
                                    Object? updateItem =
                                        querySnapshot.docs.first.data();
                                    int oldQt = (updateItem
                                        as Map<String, dynamic>)['soluong'];
                                    await querySnapshot.docs.first.reference
                                        .update({'soluong': ++oldQt});
                                  }
                                },
                                onDelete: () async {
                                  FirebaseFirestore firestore =
                                      FirebaseFirestore.instance;
                                  QuerySnapshot querySnapshot = await firestore
                                      .collection('cartCollection')
                                      .where('Ma_SP',
                                          isEqualTo: data[index]['Ma_SP'])
                                      .get();
                                  if (querySnapshot.docs.isNotEmpty) {
                                    Object? updateItem =
                                        querySnapshot.docs.first.data();
                                    int oldQt = (updateItem
                                        as Map<String, dynamic>)['soluong'];
                                    await querySnapshot.docs.first.reference
                                        .delete();
                                  }
                                },
                              ))
                    ],
                  );
                }
              })
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        height: 70,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tạm Tính',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                StreamBuilder(
                    stream: FirestoreServices.getProductsCart(),
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
                        int totalPr = 0;
                        for (var item in data) {
                          totalPr = totalPr +
                              ((item['Gia'] as int) * (item['soluong'] as int));
                        }
                        return Text(
                          '$totalPrđ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff79AC78),
                          ),
                        );
                      }
                    })
              ],
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => const Color(0xff79AC78))),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const OrderPaymentView();
                  },
                ));
              },
              child: const Text('Đặt mua'),
            ),
          ],
        ),
      ),
    );
  }
}
