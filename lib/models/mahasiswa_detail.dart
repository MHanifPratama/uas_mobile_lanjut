class MahasiswaIlkomDetail {
  String? nomor_hp;

  MahasiswaIlkomDetail({
    required this.nomor_hp,
  });

  MahasiswaIlkomDetail.fromJson(json) {
    nomor_hp = json['no_telepon'];
  }
}
