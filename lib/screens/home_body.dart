import 'package:flutter/material.dart';
import 'package:uap_mobile_lanjut/screens/screen_mahasiswa.dart';
import '../api/get_token.dart';

class home_body extends StatelessWidget {
  const home_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisCount: 2,
      children: <Widget>[
        Card(
          margin: const EdgeInsets.all(8),
          child: InkWell(
              onTap: () {
                // MahasiswaScreen();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListMahasiswaScreen()));
              },
              splashColor: Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      size: 70,
                    ),
                    Text('Kontak Mahasiswa', style: TextStyle(fontSize: 17))
                  ],
                ),
              )),
        ),
        Card(
          margin: const EdgeInsets.all(8),
          child: InkWell(
              onTap: () {
                print('Mata Kuliah');
              },
              splashColor: Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      size: 70,
                    ),
                    Text('Mata Kuliah', style: TextStyle(fontSize: 17))
                  ],
                ),
              )),
        ),
        Card(
          margin: const EdgeInsets.all(8),
          child: InkWell(
              onTap: () {
                print('Kontak Dosen');
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => ListMahasiswaScreen()));
              },
              splashColor: Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      size: 70,
                    ),
                    Text('Dosen', style: TextStyle(fontSize: 17))
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
