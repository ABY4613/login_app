
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_app/utilts/colors_const.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.buttonText, this.onButtonPressed});
  final String buttonText;
  final void Function()? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,
      child: Container(
        decoration: BoxDecoration(
            color:ColorConstants.PRIMARY,
            borderRadius: BorderRadius.circular(18)),
        alignment: Alignment.center,
        
        height: 55,
        width: double.infinity,
        child: Text(
          buttonText,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20),
        ),
      ),
    );
  }
}
