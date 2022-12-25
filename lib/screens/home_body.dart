import 'package:flutter/material.dart';
import 'package:uap_mobile_lanjut/screens/screen_mahasiswa.dart';
import 'package:uap_mobile_lanjut/screens/screen_mata_kuliah.dart';
import '../api/get_mata_kuliah.dart';
import '../api/get_token.dart';
import '../components/list_mata_kuliah.dart';

class home_body extends StatelessWidget {
  const home_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          height: size.height * .40,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36)),
          ),
        ),
        SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Selamat Datang',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                Text('Pengguna',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20,
                        fontWeight: FontWeight.w400))
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 150),
          child: GridView.count(
            padding: const EdgeInsets.all(20),
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.yellow, width: 5),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.call,
                            size: 50,
                            color: Colors.black,
                          ),
                          SizedBox(height: 10),
                          Text('Kontak Mahasiswa',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black))
                        ],
                      ),
                    )),
              ),
              Card(
                margin: const EdgeInsets.all(8),
                // shadowColor: Colors.yellow,
                // elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.yellow, width: 5),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),

                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListMataKuliahScreen()));
                    },
                    splashColor: Colors.yellow,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.book,
                            size: 50,
                            color: Colors.black,
                          ),
                          SizedBox(height: 10),
                          Text('List Mata Kuliah',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black))
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
