import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_an_di_dong/screen/order_payment/components/cart_item.dart';
import 'package:do_an_di_dong/screen/voucher/list_voucher.dart';
import 'package:do_an_di_dong/services/firestore_services.dart';
import 'package:do_an_di_dong/widgets_common/loading_indicator.dart';
import 'package:flutter/material.dart';

class OrderPaymentView extends StatefulWidget {
  const OrderPaymentView({super.key});

  @override
  State<OrderPaymentView> createState() => _OrderPaymentViewState();
}

class _OrderPaymentViewState extends State<OrderPaymentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text('Thanh toán đơn hàng'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Thông tin nhận hàng',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Thay đổi',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Bùi Tuấn Huy - 0123456789',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color: Color(0xff03009E),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Nhận hàng tại',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff2749F9),
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Miễn Phí',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(
                            Icons.check,
                            size: 35,
                            color: Color(0xffD71313),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                            child: Text(
                              'Địa chỉ:...',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Thay đổi',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            color: const Color(0xffBDF1E8),
            child: Row(
              children: [
                const Icon(Icons.calendar_month_outlined),
                const SizedBox(width: 5),
                RichText(
                  text: const TextSpan(
                    text: 'Thời gian nhận: ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Từ 16h,Ngày mai',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
              }),
          Container(
            height: 5,
            color: Colors.grey.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'THANH TOÁN',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.9),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    InkWell(
                      onTap: () {
                        //nút bấm thanh toán ví MoMo
                      },
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          child: const Row(
                            children: [
                              Text(
                                'Ví MoMo',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Icon(
                                Icons.check,
                                color: Color(0xffD71313),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 2,
                  height: 25,
                  color: Colors.grey,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ƯU ĐÃI',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.9),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ListVoucher(),
                            ));
                      },
                      child: const Text(
                        'Chọn/nhập mã',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 5,
            color: Colors.grey.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CHI TIẾT THANH TOÁN',
                  style: TextStyle(
                    color: Colors.grey.withOpacity(0.9),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tiền hàng',
                            style: TextStyle(
                              fontSize: 12,
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
                                        ((item['Gia'] as int) *
                                            (item['soluong'] as int));
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
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Khuyến mãi',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '-15,000đ',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
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
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tổng Thanh Toán',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => const Color(0xff79AC78))),
              onPressed: () {},
              child: const Text('Thanh Toán'),
            ),
          ],
        ),
      ),
    );
  }
}
