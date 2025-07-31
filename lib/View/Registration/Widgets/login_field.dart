import 'package:flutter/material.dart';
import 'package:the_lerners/Utilities/colors.dart';

class LoginField extends StatefulWidget {
  const LoginField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.obsecure});
  final String hintText;
  final TextEditingController controller;
  final bool obsecure;

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  bool obscureText = false;
  @override
  void initState() {
    super.initState();
    obscureText = widget.obsecure;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIconColor: kGreyColor,
          suffixIcon: widget.obsecure
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: obscureText
                      ? const Icon(Icons.visibility)
                      : const Icon(
                          Icons.visibility_off,
                        ),
                )
              : null,
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
            color: kbgcolor,
          ))),
    );
  }
}
