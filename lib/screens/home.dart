import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_body.dart';
import 'info.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const String prefSelectedIndexKey = 'selectedTab';
  // final screens = [home_body(), info_body()];
  static List<Widget> pages = <Widget>[
    home_body(),
    info_body(),
  ];
  @override
  void initState() {
    super.initState();
    getCurrentIndex();
  }

  void getCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(prefSelectedIndexKey)) {
      setState(() {
        final index = prefs.getInt(prefSelectedIndexKey);
        if (index != null) {
          _selectedIndex = index;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.yellow,
      //   // title: Text(
      //   //   textAlign: TextAlign.center,
      //   //   'Ilkom-App',
      //   //   style: TextStyle(color: Colors.black),
      //   // )
      // ),
      // body: home_body(),
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: GNav(
          selectedIndex: _selectedIndex,
          backgroundColor: Colors.black,
          color: Colors.yellow,
          tabMargin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          activeColor: Colors.yellow,
          tabBackgroundColor: Color.fromARGB(123, 255, 235, 59),
          padding: EdgeInsets.all(10),
          gap: 8,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
            saveCurrentIndex();
          },
          tabs: const [
            GButton(icon: Icons.home, text: 'Beranda'),
            GButton(icon: Icons.info, text: 'Info'),
          ]),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business, color: Colors.grey),
      //       label: 'Beranda',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business, color: Colors.grey),
      //       label: 'Produk',
      //     ),
      //   ],
      // )
    );
  }

  void saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(prefSelectedIndexKey, _selectedIndex);
  }
}
