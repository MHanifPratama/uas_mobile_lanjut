class MahasiswaIlkom {
  String? id_peserta_didik;
  String? id_reg_pd;
  String? program_studi;
  String? npm;
  String? nama_mahasiswa;
  String? periode_masuk;
  String? semester_sekarang;
  String? ipk;
  String? sks_lulus;
  String? status;
  String? ips;
  // String? nomor_hp;
  // String? nomor_hp_darurat;

  MahasiswaIlkom({
    required this.id_peserta_didik,
    required this.id_reg_pd,
    required this.program_studi,
    required this.npm,
    required this.nama_mahasiswa,
    required this.periode_masuk,
    required this.semester_sekarang,
    required this.ipk,
    required this.sks_lulus,
    required this.status,
    required this.ips,
    required List<MahasiswaIlkom> mahasiswas,
    // required this.nomor_hp,
    // required this.nomor_hp_darurat
  });

  MahasiswaIlkom.fromJson(Map<String, dynamic> json) {
    id_peserta_didik = json['id_peserta_didik'];
    id_reg_pd = json['id_reg_pd'];
    program_studi = json['program_studi'];
    npm = json['NPM'];
    nama_mahasiswa = json['nama_mahasiswa'];
    periode_masuk = json['periode_masuk'];
    semester_sekarang = json['semester_sekarang'];
    ipk = json['ipk'];
    sks_lulus = json['sks_lulus'];
    status = json['status'];
    ips = json['ips'];
    // nomor_hp = json['nomor_hp'];
    // nomor_hp_darurat = json['nomor_hp_darurat'];
  }
}
