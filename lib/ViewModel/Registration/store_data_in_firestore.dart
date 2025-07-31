import 'package:cloud_firestore/cloud_firestore.dart';

class StoringData {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  //function to store data in firestore
   storingDataInFirebase(
      {required String uid,
      required Map<String, dynamic> data,
      required String collectionName}) async {
    await firestore.collection(collectionName).doc(uid).set(data);
  }
}
