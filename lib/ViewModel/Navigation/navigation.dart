import 'package:flutter/material.dart';

class Navigation{
  static naivgateToPage(BuildContext context,Widget route){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => route,));
  }
  static showMessage(BuildContext context,String textt){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(textt)));
  }
}