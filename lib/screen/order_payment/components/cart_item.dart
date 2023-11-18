import 'package:flutter/material.dart';

class CartItemWiget extends StatelessWidget {
  final String? productNo;

  final String? productName;
  final String? price;
  final String? image;
  final int? qty;
  final bool? selected;
  final Function()? increment;
  final Function()? decrement;
  final Function()? onDelete;
  final Function()? onSelecteChanged;
  const CartItemWiget({
    super.key,
    this.productNo,
    this.productName,
    this.price,
    this.qty = 1,
    this.increment,
    this.decrement,
    this.image,
    this.onDelete,
    this.selected = false,
    this.onSelecteChanged,
  });

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> quantity = ValueNotifier<int>(1);
    quantity.value = qty ?? 1;
    ValueNotifier<bool> select = ValueNotifier<bool>(false);
    select.value = selected ?? false;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          ValueListenableBuilder(
            valueListenable: select,
            builder: (context, value, child) {
              return Checkbox(
                value: select.value,
                onChanged: (value) {
                  select.value = !select.value;
                  if (onSelecteChanged != null) {
                    onSelecteChanged?.call();
                  }
                },
              );
            },
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: 75,
            height: 75,
            child: Image.asset(image ?? 'assets/images/Rau/cai_thia.jpg'),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      //hiển thị productNo hoặc name thì tùy anh nha
                      productName ?? productName ?? 'Tên SP + quy cách',
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
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        quantity.value -= 1;
                        if (decrement != null) {
                          decrement?.call();
                        }
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        color: const Color(0xffD9D9D9),
                        child: const Center(
                          child: Icon(
                            Icons.remove,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: quantity,
                      builder: (context, value, child) {
                        return Container(
                          width: 40,
                          height: 20,
                          color: const Color(0xffD9D9D9).withOpacity(0.5),
                          child: Center(
                            child: Text(
                              quantity.value.toString(),
                              style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    InkWell(
                      onTap: () {
                        quantity.value += 1;
                        if (increment != null) {
                          increment?.call();
                        }
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        color: const Color(0xffD9D9D9),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: onDelete,
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              width: 50,
              height: 50,
              child: const Icon(
                Icons.delete_outline,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
