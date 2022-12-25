import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/mahasiswa_detail.dart';
import '../models/models.dart';
import '../api/get_token.dart';

class MahasiswaAPI {
  static Future<List<MahasiswaIlkom>> getAllMahasiswaIlkom(int halaman) async {
    String url =
        'http://onedata.unila.ac.id/api/live/0.1/mahasiswa/list_mahasiswa?page=$halaman&limit=50&sort_by=ASC&id_prodi=54BBD27B-2376-4CAE-9951-76EF54BD2CA2';
    print('aaaa1');
    String a = await token.getToken() as String;
    print(a);
    var headers = {"Authorization": "${a}"};
    final response = await http.get(headers: headers, Uri.parse(url));
    print(response.statusCode);
    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      if (json['data'] != null) {
        // print(json['data']);
        final mahasiswa = <MahasiswaIlkom>[];
        json['data'].forEach((v) {
          mahasiswa.add(MahasiswaIlkom.fromJson(v));
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

  static Future<String> getTelephone(String id) async {
    String url =
        'http://onedata.unila.ac.id/api/live/0.1/mahasiswa/detail?id_peserta_didik=$id';
    String a = await token.getToken() as String;
    var headers = {"Authorization": "${a}"};
    final response = await http.get(headers: headers, Uri.parse(url));
    // print(response);
    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      if (json['data'] != null) {
        var get_token_json = jsonDecode(response.body);
        String token_result =
            get_token_json['data'][0]['no_telepon'].toString();
        return token_result;
      } else {
        print('mahasiswa gagal');
        return '';
      }
    } else {
      print('mahasiswa gagal 2');
      throw Exception('Failed to ANU');
    }
  }
}
