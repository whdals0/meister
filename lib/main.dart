import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meister/screens/page_splash.dart';
import 'package:meister/screens/tab_main.dart';

import 'dialogs/dialog_find_pw.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TabMain(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextButton(
        onPressed: (){
          Get.to(PageSplash());
        }, child: Text('PageSplash 로 이동'),
      ),
    );
  }
}
