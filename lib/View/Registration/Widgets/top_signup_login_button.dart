
import 'package:flutter/material.dart';
import 'package:the_lerners/Utilities/style.dart';

class TopSignUpLoginButton extends StatelessWidget {
  const TopSignUpLoginButton({
    super.key, required this.isLogin, required this.signupOnPress, required this.loginOnPress,
  });
  final bool isLogin;
  final VoidCallback signupOnPress;
  final VoidCallback loginOnPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(top: 50),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: signupOnPress,
            style:isLogin?kRegisterButtonStyle: kActiveRegisterButtonStyle,
            child:  Text(
              'Sign Up',
              style:isLogin?const TextStyle(fontSize: 18):const TextStyle(fontSize: 32),
            ),
          ),
          ElevatedButton(
            onPressed: loginOnPress,
            style:isLogin?kActiveRegisterButtonStyle: kRegisterButtonStyle,
            child:  Text(
              'Login',
              style:isLogin?const TextStyle(fontSize: 32):const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
