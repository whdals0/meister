import 'package:flutter/material.dart';

class DialogFindPw extends StatefulWidget {
  const DialogFindPw({Key? key}) : super(key: key);

  @override
  State<DialogFindPw> createState() => _DialogFindPwState();
}

class _DialogFindPwState extends State<DialogFindPw> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(16),
      child: Container(
        width: 100, height: 200,
        color: Colors.white,
        child: Text("다이얼로그 그리기"),
      ),
    );
  }
}
