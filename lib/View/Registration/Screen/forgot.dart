import 'package:flutter/material.dart';
import 'package:the_lerners/Model/ErrorMessage/error_messages.dart';
import 'package:the_lerners/Utilities/colors.dart';
import 'package:the_lerners/View/Registration/Widgets/login_field.dart';
import 'package:the_lerners/View/Registration/Widgets/submit_button.dart';
import 'package:the_lerners/ViewModel/Navigation/navigation.dart';
import 'package:the_lerners/ViewModel/Registration/signup_function.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  TextEditingController emailController = TextEditingController();
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            foregroundColor: kbgcolor,
          ),
          backgroundColor: kWhiteColor,
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: const Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 24,
                        color: kbgcolor
                      ),
                    )),
                Container(
                  height: 300,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoginField(
                        hintText: 'Email Address',
                        obsecure: false,
                        controller: emailController,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SubmitButton(
                        text: 'Send Email',
                        onPressed: () {
                          
                          setState(() {
                            loading = true;
                          });
                          if (emailController.text != '') {
                            SignUpClass.resetPassword(
                                email: emailController.text,
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
