import 'package:flutter/material.dart';
import 'package:mqtt/pages/home/home_page.dart';
import 'package:mqtt/pages/favorites_page.dart';
import 'package:mqtt/pages/create_content_page.dart';
import 'package:mqtt/pages/membership_page.dart';
import 'package:mqtt/pages/my_page.dart';
import 'package:mqtt/widgets/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
    const MembershipPage(),
    const MyPage(),
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
        title: const Text('Custom AppBar'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            padding: const EdgeInsets.only(right: 32.0),
            icon: const Icon(Icons.search),
            onPressed: () {
              // 这里添加你的搜索功能的代码
              //弹框
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Search'),
                    content: const Text('Search your content here.'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: const Text('Confirm'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
