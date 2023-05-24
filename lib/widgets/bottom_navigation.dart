import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  final Function(int) onTabSelected;

  BottomNavigation({required this.onTabSelected});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '首页',
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.star),
          label: '关注',
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.add_box),
          label: '创建',
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.card_membership),
          label: '会员',
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person),
          label: '我的',
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        widget.onTabSelected(index);
      },
    );
  }
}
