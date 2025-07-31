import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetUser extends ChangeNotifier {
  Map<String, String> currentUserData = {};
  getCurrentUserData() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    if (preferences.getString('userId') != null) {
      currentUserData = {
        'userId':"${preferences.getString('userId')}",
        'username': "${preferences.getString('userName')}",
        'email': "${preferences.getString('userEmail')}",
        'url': "${preferences.getString('userProfileImage')}",
      };
    }
    notifyListeners();
  }
}
