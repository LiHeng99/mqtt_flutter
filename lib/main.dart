import 'package:flutter/material.dart';
import 'package:mqtt/pages/home/home_page.dart';
import 'package:mqtt/pages/favorites_page.dart';
import 'package:mqtt/pages/create_content_page.dart';
import 'package:mqtt/pages/membership_page.dart';
import 'package:mqtt/pages/my_page.dart';
import 'package:mqtt/widgets/bottom_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final _pages = [
    HomePage(),
    FavoritesPage(),
    CreateContentPage(),
    MembershipPage(),
    MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigation(
        onTabSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      appBar: AppBar(
        title: Text('Custom AppBar'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
