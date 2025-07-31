
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetTakenCourses extends ChangeNotifier {
  List<dynamic> currentList=[];
 getCourseList() async {
   //Sharedprefrences is a pakage of flutter to support local storage
  SharedPreferences preferences =await SharedPreferences.getInstance();
  String  userID = "${preferences.getString('userId')}";
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection('Verified')
        .doc(userID)
        .get();
//
    if (snapshot.exists) {
      // ignore: unused_local_variable
       currentList =
          (snapshot.data() as Map<String, dynamic>)['takencourse']??[];
    }
    notifyListeners();
  }
  List<dynamic> get getList=> currentList;
}