import 'package:firstapp/colors.dart';
import 'package:firstapp/responsive/responsive.dart';
import 'package:firstapp/screen/mobilescreen.dart';
import 'package:firstapp/screen/webscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(whatsapp());
}

class whatsapp extends StatelessWidget {
  const whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const Responsivelayout(
          mobileScreenLayout: Mobilescreenlayout(),
          webSccreenLayout: Webscreenlayout()),
    );
  }
}
