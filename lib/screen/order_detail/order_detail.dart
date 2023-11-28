import 'package:do_an_di_dong/screen/order_payment/order_payment_view.dart';
import 'package:flutter/material.dart';

class OrderDetailItemWidget extends StatelessWidget {
  final String? image;

  final String? name;
  final String? quantity;
  final String? price;
  const OrderDetailItemWidget({
    super.key,
    this.image,
    this.name,
    this.quantity,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: 75,
            height: 75,
            child: image != null ? Image.network(image!) : Image.asset('assets/images/Rau/cai_thia.jpg'),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      //hiển thị productNo hoặc name thì tùy anh nha
                      name ?? 'Tên SP + quy cách',
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 12,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      price ?? '9,900 đ',
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          Text(
            quantity ?? 'x1',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class OrderDetailView extends StatefulWidget {
  const OrderDetailView({super.key});

  @override
  State<OrderDetailView> createState() => _OrderDetailViewState();
}

class OrderStatusWidget extends StatelessWidget {
  final String? status;

  const OrderStatusWidget({
    super.key,
    this.status,
  });

  //có 3 trạng thái : ví dụ là A - B - C
  //sau này có data thì thay thế A-B-C Bằng 3 trạng thái của bạn quy định

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                Container(
                  // color: Colors.red,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 50,
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: status == 'A' || status == 'B' || status == 'C' ? Colors.green : Colors.grey,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Icon(
                              Icons.storefront_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 3),
                            width: 47,
                            height: 5,
                            decoration: BoxDecoration(
                              color: status == 'B' || status == 'C' ? Colors.green : Colors.grey,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Đã đặt hàng',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    height: 5,
                    decoration: BoxDecoration(
                      color: status == 'B' || status == 'C' ? Colors.green : Colors.grey,
                    ),
                  ),
                ),
                Container(
                  // color: Colors.red,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 30,
                            margin: const EdgeInsets.only(right: 10),
                            height: 5,
                            decoration: BoxDecoration(
                              color: status == 'B' || status == 'C' ? Colors.green : Colors.grey,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: status == 'B' || status == 'C' ? Colors.green : Colors.grey,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Icon(
                              Icons.local_shipping_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          Container(
                            width: 30,
                            margin: const EdgeInsets.only(left: 10),
                            height: 5,
                            decoration: BoxDecoration(
                              color: status == 'C' ? Colors.green : Colors.grey,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Đang giao hàng',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    height: 5,
                    decoration: BoxDecoration(
                      color: status == 'C' ? Colors.green : Colors.grey,
                      borderRadius: const BorderRadius.only(
                          // topLeft: Radius.circular(10),
                          // bottomLeft: Radius.circular(10),
                          ),
                    ),
                  ),
                ),
                Container(
                  // color: Colors.red,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 3),
                            width: 47,
                            height: 5,
                            decoration: BoxDecoration(
                              color: status == 'C' ? Colors.green : Colors.grey,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: status == 'C' ? Colors.green : Colors.grey,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Icon(
                              Icons.check_circle_outline_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Hoàn tất',
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
          ),
        ],
      ),
    );
  }
}

class _OrderDetailViewState extends State<OrderDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text('Chi tiết đơn hàng'),
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
          const OrderStatusWidget(
            status: 'C',
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Nguyễn Văn A - 25484884',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.black,
                  height: 5,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Nhận hàng tại',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.home_work_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              'Số nhà 123,đuờng 123123',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone_enabled_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '04848848484',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
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
            height: 5,
            color: Colors.grey.withOpacity(0.5),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mã đơn hàng',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  '6151515151511151551',
                  style: TextStyle(
                    fontSize: 12,
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
                        text: 'Từ 16h,Thứ 6 (13/11)',
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
          //chỗ này để đổ danh sách sản phẩm của đơn hàng đó
          const OrderDetailItemWidget(),
          const Divider(
            height: 3,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Thời gian thanh toán',
                      style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.grey.withOpacity(0.8)),
                    ),
                    const Text(
                      '16:30 - 2/11/2023',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Phương thức thanh toán',
                      style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.grey.withOpacity(0.8)),
                    ),
                    const Text(
                      'Thanh toán khi nhận hàng',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Số tiên thanh toán',
                      style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.grey.withOpacity(0.8)),
                    ),
                    const Text(
                      '900,000đ',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            height: 3,
            color: Colors.black,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        height: 60,
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
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => const Color(0xff79AC78))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderPaymentView(),
                      ));
                },
                child: const Text('Mua lại'),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => const Color(0xff79AC78))),
                onPressed: () {},
                child: const Text('Phản hồi'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
