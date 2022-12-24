import 'package:flutter/material.dart';

import 'home_body.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text(
            'Ilkom-App',
            style: TextStyle(color: Colors.black),
          )),
      body: home_body(),
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
}
