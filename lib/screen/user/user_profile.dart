import 'package:flutter/material.dart';
import 'user_details.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePage();
}

class _UserProfilePage extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 75,
              // backgroundImage: AssetImage('assets/avatar.jpg'),
            ),
            UserDetails(
              username: 'JohnDoe',
              sex: 'Male',
              phoneNumber: '+1234567890',
              email: 'johndoe@example.com',
              dateOfBirth: 'January 1, 1990',
            ),
          ],
        ),
      ),
    );
  }
}
