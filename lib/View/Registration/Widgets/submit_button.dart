import 'package:flutter/material.dart';
import 'package:the_lerners/Utilities/colors.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key, required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return      ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: kbgcolor,//green
                          foregroundColor: kfgcolor,//black
                          maximumSize: const Size(double.maxFinite, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child:  Text(text));
  }
}