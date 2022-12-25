import 'package:flutter/material.dart';
import '../api/get_mahasiswa.dart';
import '../api/get_mata_kuliah.dart';
import '../components/list_mahasiswa.dart';
import '../components/list_mata_kuliah.dart';
import '../models/models.dart';

class ListMataKuliahScreen extends StatefulWidget {
  const ListMataKuliahScreen({Key? key}) : super(key: key);

  @override
  State<ListMataKuliahScreen> createState() => _ListMataKuliahScreenState();
}

class _ListMataKuliahScreenState extends State<ListMataKuliahScreen> {
  int halaman = 1;
  int angkatan = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: const Text(
          "List Mata Kuliah",
          style: TextStyle(color: Colors.black),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Colors.yellow,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
          ),
          FutureBuilder<List<MataKuliahIlkom>>(
            future: MataKuliahAPI.getAllMataKuliahIlkomS1(halaman),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return ListMataKuliah(matakuliah: snapshot.data ?? []);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (halaman == 1) {
                    } else {
                      setState(() {
                        halaman--;
                      });
                    }
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  child: const Text(
                    "kembali",
                  ),
                ),
                Text("$halaman"),
                ElevatedButton(
                  onPressed: () {
                    if (halaman == 10) {
                    } else {
                      setState(() {
                        halaman++;
                      });
                    }
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  child: const Text(
                    "selanjutnya",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
