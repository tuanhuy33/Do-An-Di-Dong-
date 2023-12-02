import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;

//collections
const categorytCollection = "LoaiSP";
const productCollection = "SanPham";
const oderDetailCollection = "CT_Hoa_Don";
const voucherCollection = "KhuyenMai";
