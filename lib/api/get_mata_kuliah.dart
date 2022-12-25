import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/mahasiswa_detail.dart';
import '../models/models.dart';
import '../api/get_token.dart';

class MataKuliahAPI {
  static Future<List<MataKuliahIlkom>> getAllMataKuliahIlkomS1(
      int halaman) async {
    String url =
        'http://onedata.unila.ac.id/api/live/0.1/mata_kuliah/list_matkul?page=1&limit=50&id_prodi=54BBD27B-2376-4CAE-9951-76EF54BD2CA2';
    String a = await token.getToken() as String;
    var headers = {"Authorization": "${a}"};
    final response = await http.get(headers: headers, Uri.parse(url));
    print(response.statusCode);
    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      if (json['data'] != null) {
        print(json['data']);
        print('aaaaa');
        final mahasiswa = <MataKuliahIlkom>[];
        json['data'].forEach((v) {
          mahasiswa.add(MataKuliahIlkom.fromJson(v));
        });

        return mahasiswa;
      } else {
        print('mahasiswa gagal');
        return [];
      }
    } else {
      print('mahasiswa gagal 2');
      throw Exception('Failed to ANU');
    }
  }
}
