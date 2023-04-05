import 'package:flutter/material.dart';

class Navigation {
  static void push(context, Widget SecondScreen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondScreen,
      ),
    );
  }

  static void pushAndReplacement(context, Widget secondScreen) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => secondScreen,
      ),
      (route) => false,
    );
  }
}
