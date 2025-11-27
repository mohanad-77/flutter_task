import 'package:flutter/material.dart';
import 'homePage.dart';
import 'settingPage.dart';
import 'searchPage.dart';
import 'accountPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IndexPage(),
    ),
  );
}

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _bottomNavBar = 0;

  List<Widget> _pages = [
    homePage(),
    searchPage(),
    settingPage(),
    accountPage(),
  ];

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'الصفحة الرئيسية';
      case 1:
        return 'صفحة البحث';
      case 2:
        return 'صفحة الإعدادات';
      case 3:
        return 'صفحة الحساب';
      default:
        return 'صفحة';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_getTitle(_bottomNavBar)),
          backgroundColor: Colors.cyan),
      body: IndexedStack(
        index: _bottomNavBar,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _bottomNavBar,
        onTap: (index) {
          setState(() {
            _bottomNavBar = index;
          });
        },
        backgroundColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey[600],
        selectedItemColor: Colors.blue[800],
        items: const [
          BottomNavigationBarItem(label: 'الرئيسية', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'البحث', icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: 'الإعدادات', icon: Icon(Icons.settings)),
          BottomNavigationBarItem(label: 'الحساب', icon: Icon(Icons.account_box)),
        ],
      ),
    );
  }
}
