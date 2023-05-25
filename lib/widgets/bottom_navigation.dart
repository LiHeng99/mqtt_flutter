import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  final Function(int) onTabSelected;

  BottomNavigation({required this.onTabSelected});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '连接',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: '列表',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box),
          label: '创建连接',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_membership),
          label: '会员',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '设置',
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
