import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    // image: DecorationImage(
                    //     image: AssetImage("assets/images/Rectangle_32.png"),
                    //     fit: BoxFit.fill),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 22, right: 22),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.secondColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    blurRadius: 3,
                                    spreadRadius: 0,
                                    offset: const Offset(0, 4)),
                              ],
                            ),
                            height: 40,
                            width: 40,
                            child: IconButton(
                              icon: const Icon(Icons.arrow_back_ios_rounded),
                              iconSize: 20,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.secondColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 3,
                                      spreadRadius: 0,
                                      offset: const Offset(0, 4)),
                                ]),
                            height: 40,
                            width: 40,
                            child: IconButton(
                              icon: const Icon(Icons.save_alt_rounded),
                              iconSize: 25,
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => const AlertDialog(
                                    title: Text("Thông Báo!"),
                                    content: Text("Lưu Thành Công"),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.all(5),
                          child: const Text(
                            "Thông Tin Tài Khoản",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            // Phần thân màn hình
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 20, left: 22, right: 22),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Họ Tên",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade400,
                        filled: true,
                        hintText: "Nguyễn Văn Tuấn",
                        hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Số Điện Thoại",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade400,
                        filled: true,
                        hintText: "0123456789",
                        hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Email",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade400,
                        filled: true,
                        hintText: "Tuan123@gmail.com",
                        hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Ngày Sinh",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade400,
                        filled: true,
                        hintText: "15/07/2002",
                        hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Địa Chỉ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade400,
                        filled: true,
                        hintText: "123/1A Nam Kỳ Khởi Nghĩa,Quận 1",
                        hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
