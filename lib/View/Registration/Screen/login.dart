import 'package:flutter/material.dart';
import 'package:the_lerners/Model/ErrorMessage/error_messages.dart';
import 'package:the_lerners/Utilities/colors.dart';
import 'package:the_lerners/View/Registration/Screen/sign_up.dart';
import 'package:the_lerners/View/Registration/Widgets/login_field.dart';
import 'package:the_lerners/View/Registration/Widgets/submit_button.dart';
import 'package:the_lerners/View/Registration/Widgets/top_signup_login_button.dart';
import 'package:the_lerners/View/Registration/Screen/forgot.dart';
import 'package:the_lerners/ViewModel/Navigation/navigation.dart';
import 'package:the_lerners/ViewModel/Registration/sign_in_with_google.dart';
import 'package:the_lerners/ViewModel/Registration/signup_function.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: kWhiteColor,
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TopSignUpLoginButton(
                  isLogin: true,
                  signupOnPress: () {
                    Navigation.naivgateToPage(context, const SignUp());
                  },
                  loginOnPress: () {},
                ),
                Container(
                    margin: const EdgeInsets.only(top: 50),
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(
                          color: kbgcolor,
                          width: 3,
                        )),
                    child: const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 50,
                      backgroundImage: AssetImage(
                        'assets/login.png',
                      ),
                    ),
                    ),
                Container(
                  height: 300,
                 
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoginField(
                        hintText: 'Email Address',
                        obsecure: false,
                        controller: emailController,
                      ),
                      LoginField(
                        hintText: 'Password',
                        obsecure: true,
                        controller: passwordController,
                      ),
                      InkWell(
                        onTap: () {
                          Navigation.naivgateToPage(context, const Forgot());
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          alignment: Alignment.centerRight,
                          child: const Text('Forgot Password ?'),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SubmitButton(
                        text: 'Login',
                        onPressed: () {
                          setState(() {
                            loading = true;
                          });
                          if (emailController.text != '' &&
                              passwordController.text != '') {
                            SignUpClass.signInUser(
                                email: emailController.text,
                                password: passwordController.text,
                                context: context,
                                setstate: () {
                                  setState(() {
                                    loading = false;
                                  });
                                });
                          } else {
                            Navigation.showMessage(
                                context, ErrorMessages.emptyFieldMessage);
                            setState(() {
                              loading = false;
                            });
                          }

                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: const Text("Login With"),
                ),
                Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        loading = true;
                      });
                      GoogleSignUp.signInUsingGoogle(
                          context: context,
                          setstate: () {
                            setState(() {
                              loading = false;
                            });
                          });
                    },
                    child: Image.asset(
                      'assets/google.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                )
              ],
            ),
          )),
        ),
        loading
            ? Container(
                color: Colors.black54,
                child: const Center(
                    child: CircularProgressIndicator(
                  color: kbgcolor,
                )),
              )
            : Container(),
      ],
    );
  }
}
