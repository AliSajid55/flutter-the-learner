import 'package:flutter/material.dart';
import 'package:the_lerners/Utilities/colors.dart';

class VerificationMessage extends StatefulWidget {
  const VerificationMessage({super.key, required this.message,required this.mystatefulWidget});
  final String message;
  final Widget mystatefulWidget;
  @override
  State<VerificationMessage> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<VerificationMessage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => widget.mystatefulWidget),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: WillPopScope(
        onWillPop: () async => false,
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/preview.gif',
              width: 100,
              height: 100,
            ),
            Container(
              margin:const EdgeInsets.only(top: 50),
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Text(widget.message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: kbgcolor, fontSize: 18)),
            ),
          ],
        )),
      ),
    );
  }
}