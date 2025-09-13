import 'package:bloc_cubit/login/pallete.dart';
import 'package:flutter/material.dart';

Widget gradientButton({VoidCallback? onPressed}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    margin: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Pallete.gradient1, Pallete.gradient2, Pallete.gradient3],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
      borderRadius: BorderRadius.circular(7),
    ),
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(395, 55),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      child: Text(
        "Sign in",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
      ),
    ),
  );
}
