import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_lerners/Utilities/colors.dart';
import 'package:the_lerners/View/Home/Screen/home.dart';
import 'package:the_lerners/View/Registration/Screen/login.dart';
import 'package:the_lerners/ViewModel/Navigation/navigation.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    checkIsLoged();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      if (isLoged) {
        Navigation.naivgateToPage(context,const Home());
      } else {
        Navigation.naivgateToPage(context,const Login());
      }
    });
  }
   //checking if user is login or not
  bool isLoged = false;
  void checkIsLoged() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    if (preferences.getString('userId') != null) {
      setState(() {
        isLoged = true;
      });
    } else {
      setState(() {
        isLoged = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: kbgcolor,
      body: Center(
          child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: kfgcolor,
          borderRadius: BorderRadius.circular(30),
          image:const DecorationImage(
            image: AssetImage('assets/appicon.png'),
          ),
          border: Border.all(color: kfgcolor,width: 2,)
        ),
      )),
    ));
  }
}
