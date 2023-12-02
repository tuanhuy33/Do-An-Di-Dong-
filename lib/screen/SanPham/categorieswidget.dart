import 'package:do_an_di_dong/screen/SanPham/list_product.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:do_an_di_dong/values/list.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: lsTitlePanel.length,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    //for (int i = 1; i <= 4; i++)
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ListProduct(
                                title: lsTitlePanel[index],
                              ),
                            ));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        decoration: BoxDecoration(
                          color: AppColors.secondColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                lsNav[index],
                                width: 30,
                                height: 40,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(7),
                              child: Text(
                                lsTitlePanel[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.black38),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
