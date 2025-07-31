import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LocalStorage  {
  static storingData(String userID) async {
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection('Verified')
        .doc(userID)
        .get();

    if (snapshot.exists) {
      Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
      final SharedPreferences preferences =
          await SharedPreferences.getInstance();
      preferences.setString('userId', userID);
      preferences.setString('userName', data['username']);
      preferences.setString('userEmail', data['email']);
      preferences.setString('userProfileImage', data['url']);
    }
  }
}

