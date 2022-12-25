import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uap_mobile_lanjut/screens/screen_mahasiswa.dart';
import 'package:uap_mobile_lanjut/screens/screen_mata_kuliah.dart';
import '../api/get_mata_kuliah.dart';
import '../api/get_token.dart';
import '../components/list_mata_kuliah.dart';

class info_body extends StatelessWidget {
  const info_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
              ),
              Text('Tentang Aplikasi',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(20),
              ),
              Center(
                child: InteractiveViewer(
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRect(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(500),
                          child:
                              Image(image: AssetImage('assets/1_Hanif.png'))),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
              ),
              Text('M Hanif Pratama',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(3),
              ),
              Text('2017051040',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
              Padding(
                padding: const EdgeInsets.all(3),
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.yellow, width: 1),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 300,
                        height: 100,
                        child: Center(
                          child: Text(
                              'Ini adalah aplikasi untuk mencari kontak mahasiswa dan mata kuliah di jurusan Ilmu komputer',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }
}
