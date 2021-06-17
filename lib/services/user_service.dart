import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserService{
  Future<void> getUser(phoneNumber) async {
    final User user = FirebaseAuth.instance.currentUser;
    final uid = user.uid;
    DocumentReference _productReference =
    FirebaseFirestore.instance.collection('users').doc(uid);
    await _productReference.set({'phoneNumber': phoneNumber});
  }
}