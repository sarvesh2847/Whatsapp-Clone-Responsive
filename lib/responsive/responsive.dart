import 'package:flutter/material.dart';

class Responsivelayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webSccreenLayout;
  const Responsivelayout(
      {super.key,
      required this.mobileScreenLayout,
      required this.webSccreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        //webscreen
        return webSccreenLayout;
      } else {
        //mobilescreen
        return mobileScreenLayout;
      }
    });
  }
}
