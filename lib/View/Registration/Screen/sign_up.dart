import 'package:flutter/material.dart';
import 'package:the_lerners/Model/ErrorMessage/error_messages.dart';
import 'package:the_lerners/Utilities/colors.dart';
import 'package:the_lerners/View/Registration/Screen/login.dart';
import 'package:the_lerners/View/Registration/Widgets/login_field.dart';
import 'package:the_lerners/View/Registration/Widgets/submit_button.dart';
import 'package:the_lerners/View/Registration/Widgets/top_signup_login_button.dart';
import 'package:the_lerners/ViewModel/Navigation/navigation.dart';
import 'package:the_lerners/ViewModel/Registration/image_picker.dart';
import 'package:the_lerners/ViewModel/Registration/signup_function.dart';
import 'dart:io';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatpasswordController = TextEditingController();
  bool loading = false;
  bool imgPicked = false;
  File? file;
  String url = '';
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
                  isLogin: false,
                  signupOnPress: () {},
                  loginOnPress: () {
                    Navigation.naivgateToPage(context, const Login());
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(60)),
                      border: Border.all(color: kbgcolor, width: 3)),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 60,
                    backgroundImage: imgPicked
                        ? FileImage(
                            file as File,
                          ) as ImageProvider<Object>?
                        : const AssetImage(
                            'assets/login.png',
                          ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: kbgcolor,
                            borderRadius: BorderRadius.circular(5)),
                        child: InkWell(
                          onTap: () async {
                            try {
                              file = await PickImage().pickImageFromGallery();
                              if (file != null) {
                                String responseUrl=await PickImage().uploadImage(file as File);
                                setState(() {
                                  url=responseUrl;
                                  imgPicked = true;
                                });
                              }
                            } catch (e) {
                              Navigation.showMessage(context, e.toString());
                            }
                          },
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            size: 24,
                            color: kfgcolor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 500,
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
                        hintText: 'Username',
                        obsecure: false,
                        controller: usernameController,
                      ),
                      LoginField(
                        hintText: 'Password',
                        obsecure: true,
                        controller: passwordController,
                      ),
                      LoginField(
                        hintText: 'Repeat Password',
                        obsecure: true,
                        controller: repeatpasswordController,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SubmitButton(
                        text: 'SIGN UP',
                        onPressed: () {
                          setState(() {
                            loading = true;
                          });
                          String username = usernameController.text.trim();
                          String email = emailController.text.trim();
                          String password = passwordController.text.trim();
                          String repeatPassword =
                              repeatpasswordController.text.trim();
                          if (username != '' &&
                              email != '' &&
                              password != '' &&
                              repeatPassword != '' &&
                              url != '') {
                            if (passwordController.text.trim() ==
                                repeatpasswordController.text.trim()) {
                              SignUpClass.signUpUser(
                                  email: emailController.text.trim(),
                                  username: usernameController.text.trim(),
                                  password: passwordController.text.trim(),
                                  url: url,
                                  context: context,
                                  setstate: () {
                                    setState(() {
                                      loading = false;
                                    });
                                  });
                            } else {
                              Navigation.showMessage(
                                  context, 'Password Mismatch');
                                  setState(() {
                                    loading=false;
                                  });
                            }
                          } else {
                            Navigation.showMessage(
                                context, ErrorMessages.emptyFieldMessage);
                                setState(() {
                                  loading=false;
                                });
                          }
                        },
                      ),
                    ],
                  ),
                ),
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
