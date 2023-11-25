import 'package:do_an_di_dong/screen/SanPham/list_product.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      child: Row(
        children: [
          for (int i = 1; i <= 4; i++)
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListProduct(),
                    ));
              },
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.secondColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/images/nav_$i.png",
                        width: 30,
                        height: 40,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Rau Củ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black38),
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
