import 'package:do_an_di_dong/screen/order_payment/order_payment_view.dart';
import 'package:flutter/material.dart';
import 'package:do_an_di_dong/screen/order_detail/order_detail.dart';

class HistoryItem extends StatelessWidget {
  final String? code;

  final List<Widget>? listItem;
  final String? time;
  final String? paymentMethod;
  final String? totalPrice;
  final Function()? onTap;
  final Function()? onTap2;
  const HistoryItem({
    super.key,
    this.code,
    this.time,
    this.paymentMethod,
    this.totalPrice,
    this.onTap,
    this.onTap2,
    this.listItem,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OrderDetailView(),
            ));
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: onTap,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.withOpacity(0.3),
                ),
                child: Text(
                  'Hoàn tất',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.withOpacity(0.9),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Mã đơn hàng',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  code ?? '6151515151511151551',
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: listItem ??
                    [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        width: 75,
                        height: 75,
                        child: Image.asset('assets/images/Rau/cai_thia.jpg'),
                      ),
                      const Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  //hiển thị productNo hoặc name thì tùy anh nha
                                  'Tên SP + quy cách',
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 12,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  '9,900 đ',
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'x1',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
              ),
            ),
            const Divider(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Thời gian thanh toán',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.8)),
                      ),
                      Text(
                        time ?? '16:30 - 2/11/2023',
                        style: const TextStyle(
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
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.8)),
                      ),
                      Text(
                        paymentMethod ?? 'Thanh toán khi nhận hàng',
                        style: const TextStyle(
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
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.8)),
                      ),
                      Text(
                        totalPrice ?? '900,000đ',
                        style: const TextStyle(
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff79AC78))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrderPaymentView(),
                          ));
                    },
                    child: const Text('Mua lại'),
                  ),
                ],
              ),
            ),
            Container(
              height: 5,
              color: Colors.grey.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}

class ShoppingHistoryView extends StatefulWidget {
  const ShoppingHistoryView({super.key});

  @override
  State<ShoppingHistoryView> createState() => _ShoppingHistoryViewState();
}

class _ShoppingHistoryViewState extends State<ShoppingHistoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text('Lịch sử mua hàng'),
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
        children: const [
          HistoryItem(),
          HistoryItem(),
          HistoryItem(),
        ],
      ),
    );
  }
}
