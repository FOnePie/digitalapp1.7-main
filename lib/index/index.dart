import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';
import 'digit.dart';

// ignore: camel_case_types
class index extends StatefulWidget {
  index() {
    print('index()');
  }
  @override
  _stateIndex createState() => _stateIndex();
}

// ignore: camel_case_types
class _stateIndex extends State<index> {
  _stateIndex() {
    print('_stateIndex()');
  }
  int _curIdx = 0;
  final pages = [HomePage(), DigitPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    print('_stateIndex build()');
    return Scaffold(body: pages[_curIdx], bottomNavigationBar: getBar());
  }

  Widget getBar() {
    return FFNavigationBar(
      theme: FFNavigationBarTheme(
        barBackgroundColor: Colors.white,
        selectedItemBorderColor: Colors.white,
        selectedItemBackgroundColor: Colors.green,
        selectedItemIconColor: Colors.white,
        selectedItemLabelColor: Colors.purple,
        showSelectedItemShadow: false,
        barHeight: 70,
      ),
      selectedIndex: _curIdx,
      onSelectTab: commitCurIdx,
      items: [
        FFNavigationBarItem(
          iconData: Icons.home,
          label: '首页',
          selectedBackgroundColor: Colors.deepPurple,
        ),
        FFNavigationBarItem(
          iconData: Icons.all_inclusive,
          label: '数码',
          selectedBackgroundColor: Colors.deepPurple,
        ),
        FFNavigationBarItem(
          iconData: Icons.person,
          label: '我的',
          selectedBackgroundColor: Colors.deepPurple,
        ),
      ],
    );
  }

  void commitCurIdx(int index) {
    setState(() {
      _curIdx = index;
    });
  }
}
