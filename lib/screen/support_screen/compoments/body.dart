import 'package:do_an_di_dong/consts/consts.dart';
import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:do_an_di_dong/values/app_size.dart';
import 'package:do_an_di_dong/widgets_common/our_button.dart';
import 'package:flutter/material.dart';

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildContactInfoWidget(
          name: 'Trần Huy Hoàng',
          email: 'hoangngao@gmail.com',
          phoneNumber: '083747575',
        ),
        buildContactInfoWidget(
          name: 'Nguyễn Văn Tuấn',
          email: 'vantuan@gmail.com',
          phoneNumber: '0837494990',
        ),
        buildContactInfoWidget(
          name: 'Bùi Tuấn Huy',
          email: 'huy@gmail.com',
          phoneNumber: '0837848636',
        ),
      ],
    );
  }

  Widget buildContactInfoWidget({
    required String name,
    required String email,
    required String phoneNumber,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text(
            'Họ và tên: $name',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('Email: $email'),
          Text(
            'SDT: $phoneNumber',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
