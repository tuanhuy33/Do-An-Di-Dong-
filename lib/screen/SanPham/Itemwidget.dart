import 'package:do_an_di_dong/screen/SanPham/list_product.dart';
import 'package:do_an_di_dong/screen/SanPham/product_detail.dart';
import 'package:do_an_di_dong/values/app_assets.dart';
import 'package:do_an_di_dong/values/app_colors.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
      padding: const EdgeInsets.only(top: 1),
      itemCount: 10,
      // physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: 240),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const ProductDetail(),
            //     ));
          },
          child: Container(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    offset: const Offset(0, 4))
              ],
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  child: Image.asset(
                    AppAssets.img_rau_muong,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Rau Muống Thuỷ Canh",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "10.000",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                        icon: const Icon(Icons.shopping_cart_checkout),
                        color: AppColors.primaryColor,
                        onPressed: () {})
                  ],
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}

// Expanded(
//       child: GridView.count(
//         padding: const EdgeInsets.only(top: 1),
//         childAspectRatio: 0.62,
//         physics: const ScrollPhysics(),
//         crossAxisCount: 2,
//         shrinkWrap: true,
//         children: [
//           for (int i = 1; i <= 10; i++)
//             InkWell(
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const ProductDetail(),
//                     ));
//               },
//               child: Container(
//                 padding: const EdgeInsets.only(
//                   left: 15,
//                   right: 15,
//                 ),
//                 margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(20),
//                   boxShadow: [
//                     BoxShadow(
//                         color: Colors.black.withOpacity(0.25),
//                         blurRadius: 4,
//                         offset: const Offset(0, 4))
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.all(10),
//                       child: Image.asset(
//                         AppAssets.img_rau_muong,
//                         height: 100,
//                         width: 100,
//                       ),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.only(top: 20, bottom: 30),
//                       alignment: Alignment.centerLeft,
//                       child: const Text(
//                         "Rau Muống Thuỷ Canh",
//                         style: TextStyle(fontSize: 16),
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(vertical: 16),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "10.000",
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: AppColors.primaryColor,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Icon(
//                             Icons.shopping_cart_checkout,
//                             color: AppColors.primaryColor,
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );

// GridView.builder(
//       padding: const EdgeInsets.only(top: 1),
//       itemCount: 10,
//       // physics: const ScrollPhysics(),
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: 10,
//           crossAxisSpacing: 10,
//           mainAxisExtent: 240),
//       shrinkWrap: true,
//       itemBuilder: (context, index) {
//         return InkWell(
//           onTap: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const ProductDetail(),
//                 ));
//           },
//           child: Container(
//             padding: const EdgeInsets.only(
//               left: 15,
//               right: 15,
//             ),
//             margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.black.withOpacity(0.25),
//                     blurRadius: 4,
//                     offset: const Offset(0, 4))
//               ],
//             ),
//             child: Column(
//               children: [
//                 Container(
//                   margin: const EdgeInsets.all(5),
//                   child: Image.asset(
//                     AppAssets.img_rau_muong,
//                     height: 100,
//                     width: 100,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.only(top: 20, bottom: 10),
//                   alignment: Alignment.centerLeft,
//                   child: const Text(
//                     "Rau Muống Thuỷ Canh",
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text(
//                       "10.000",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: AppColors.primaryColor,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     IconButton(
//                         icon: const Icon(Icons.shopping_cart_checkout),
//                         color: AppColors.primaryColor,
//                         onPressed: () {})
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     )