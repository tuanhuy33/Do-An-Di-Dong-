import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:do_an_di_dong/values/app_size.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: getProportionateScreenWidth(88),
              child: AspectRatio(
                aspectRatio: 0.88,
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.secondColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      AppAssets.img_24_pepsi,
                      width: 20,
                      height: 20,
                    )),
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(20),
            ),
            Column()
          ],
        )
      ],
    );
  }
}
