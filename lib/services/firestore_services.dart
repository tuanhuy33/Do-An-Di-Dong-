import 'package:do_an_di_dong/consts/firebase_const.dart';

class FirestoreServices {
  //get data LoaiSP
  static getCategory() {
    return firestore.collection(categorytCollection).snapshots();
  }

  //get data sanpham by LoaiSP
  static getProducts(category) {
    return firestore
        .collection(productCollection)
        .where("Loai", isEqualTo: category)
        .snapshots();
  }

  // static getProductByName(name) {
  //   return firestore
  //       .collection(productCollection)
  //       .where("Ten_SP", isEqualTo: name)
  //       .snapshots();
  // }
}
