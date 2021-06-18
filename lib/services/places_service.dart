import 'package:cloud_firestore/cloud_firestore.dart';

class ProductsService{

  Stream<QuerySnapshot> readItems()  {
    CollectionReference _product =  FirebaseFirestore.instance
        .collection('Places');
    return _product.snapshots();
  }
}