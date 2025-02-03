import 'package:flutter/material.dart';

class AppColor{
  static const Color primary = Color(0xff1f5d40);
  static const Color primaryLight = Color(0xff34805c);
  static const Color secondPrimary = Color(0xffFDD363);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff010100);
  static const Color grey = Colors.grey;
  static const Color background = Color(0xffffffff);
  static const Color red = Color(0xffC83025);
  static const Color yellow = Color(0xffE9AB17);
  static const Color purple = Color(0xff6A0DAD);
  static const Color orange = Color(0xffFF8000);
  static const Color pale = Color(0xffFAF9DE);

  static Gradient gradientPrimary =  const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[primaryLight, primary],
  );

  static Gradient gradientFullPrimary =  const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[primary, primary],
  );

}