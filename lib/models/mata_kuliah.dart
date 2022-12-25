class MataKuliahIlkom {
  String? id_kurikulum_sp;
  String? id_mk;
  String? id_sms;
  String? nm_prodi;
  String? kode_mk;
  String? nama_mk;
  String? sks_mk;
  String? status;
  String? semester_mk;

  MataKuliahIlkom({
    required this.id_kurikulum_sp,
    required this.id_mk,
    required this.id_sms,
    required this.nm_prodi,
    required this.kode_mk,
    required this.nama_mk,
    required this.sks_mk,
    required this.status,
    required this.semester_mk,
    required List<MataKuliahIlkom> mataKuliahs,
  });
  MataKuliahIlkom.fromJson(Map<String, dynamic> json) {
    id_kurikulum_sp = json['id_kurikulum_sp'];
    id_mk = json['id_mk'];
    id_sms = json['id_sms'];
    nm_prodi = json['nm_prodi'];
    kode_mk = json['kd_mk'];
    nama_mk = json['nm_mk'];
    sks_mk = json['sks_mk'];
    status = json['status'];
    semester_mk = json['semester'];
  }
}
