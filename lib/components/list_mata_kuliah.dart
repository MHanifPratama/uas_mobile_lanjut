import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../api/get_mahasiswa.dart';
import '../models/models.dart';
import 'package:url_launcher/url_launcher.dart';

class ListMataKuliah extends StatefulWidget {
  final List<MataKuliahIlkom> matakuliah;
  ListMataKuliah({Key? key, required this.matakuliah}) : super(key: key);

  @override
  State<ListMataKuliah> createState() => _ListMataKuliahState();
}

class _ListMataKuliahState extends State<ListMataKuliah> {
  late List<MataKuliahIlkom> ListMataKuliah;

  @override
  void initState() {
    super.initState();
    ListMataKuliah = widget.matakuliah;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: ListMataKuliah.length,
              itemBuilder: (context, index) {
                final mahasiswa = ListMataKuliah[index];
                return listItem(mahasiswa);
              },
              scrollDirection: Axis.vertical,
            ),
          ),
        ],
      ),
    );
  }

  Widget listItem(MataKuliahIlkom mata_kuliah) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 7),
          child: Text(
            mata_kuliah.nama_mk.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        onTap: () {},
        subtitle: Text(
            "${mata_kuliah.status.toString()}\n${mata_kuliah.nm_prodi.toString()}"),
        contentPadding: const EdgeInsets.all(10),
      ),
    );
  }
}
