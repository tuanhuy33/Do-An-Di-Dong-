import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
User? currentUser = auth.currentUser;

//collections
const userCollection = "KhachHang";
const categorytCollection = "LoaiSP";
const productCollection = "SanPham";
const oderDetailCollection = "CT_Hoa_Don";
const voucherCollection = "KhuyenMai";
