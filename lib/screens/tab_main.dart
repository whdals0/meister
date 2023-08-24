import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:meister/screens/tab_alert.dart';
import 'package:meister/screens/tab_mypage.dart';
import 'package:meister/screens/tab_post.dart';

class TabMain extends StatefulWidget {
  const TabMain({Key? key}) : super(key: key);

  @override
  State<TabMain> createState() => _TabMainState();
}

class _TabMainState extends State<TabMain> {
  var currentIdx = 0; // 탭 페이지 체크용 index

  // currentIdx 에 따라서 보여줄 Tab 페이지
  final List<Widget> _widgetOptions = <Widget>[
    TabPost(),
    TabAlert(),
    TabMyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        child: _widgetOptions.elementAt(currentIdx),
      ),
      bottomNavigationBar: CustomNavigationBar(
        scaleFactor: 0.3,
        iconSize: 30,
        strokeColor: Colors.white,
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            title: Text(
              "Community",
            ),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text(
              "Alert",
            ),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text(
              "MyPage",
            ),
          ),
        ],
        currentIndex: currentIdx,
        onTap: (index) {
         currentIdx = index;
         setState(() {

         });
        },
      ),
    );
  }
}
