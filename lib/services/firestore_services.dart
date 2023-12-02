import 'package:do_an_di_dong/consts/firebase_const.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

  static getOrderDetails(category) {
    return firestore
        .collection(productCollection)
        .where("Ma_CT_Hoa_Don", isEqualTo: category)
        .snapshots();
  }

  //get voucher
  static getVoucher() {
    return firestore.collection(voucherCollection).snapshots();
  }

  // static getProductByName(name) {
  //   return firestore
  //       .collection(productCollection)
  //       .where("Ten_SP", isEqualTo: name)
  //       .snapshots();
  // }
}

class FireAuthService {
  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print('Có Lỗi Xãy Ra');
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print('Có Lỗi Xãy Ra');
    }
    return null;
  }
}
