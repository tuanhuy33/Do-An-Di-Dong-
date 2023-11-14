import 'package:flutter/material.dart';
import 'user_info_row.dart';

class UserDetails extends StatelessWidget {
  final String username;
  final String sex;
  final String phoneNumber;
  final String email;
  final String dateOfBirth;

  UserDetails({
    required this.username,
    required this.sex,
    required this.phoneNumber,
    required this.email,
    required this.dateOfBirth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserInfoRow(title: 'Username', value: username),
          UserInfoRow(title: 'Sex', value: sex),
          UserInfoRow(title: 'Phone Number', value: phoneNumber),
          UserInfoRow(title: 'Email', value: email),
          UserInfoRow(title: 'Date of Birth', value: dateOfBirth),
        ],
      ),
    );
  }
}
