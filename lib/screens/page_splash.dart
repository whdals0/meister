import 'package:flutter/material.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({Key? key}) : super(key: key);

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffEFAF13),
      child: Center(
        child: Image.asset(
          "assets/images/logo_white.png",
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
