class oleh{
  final int id;
  final String gambar;
  final String nama;
  final String deskripsi;
  final int harga;
  final int terjual;
  final String created_at;
  final String updated_at;

  const oleh({
    required this.id,
    required this.gambar,
    required this.nama,
    required this.deskripsi,
    required this.harga,
    required this.terjual,
    required this.created_at,
    required this.updated_at,
  });

  factory oleh.fromJson(Map<String, dynamic> json) {
    return oleh(
      id: json['id'],
      gambar: json['gambar'],
      nama: json['nama'],
      deskripsi: json['deskripsi'],
      harga: json['harga'],
      terjual: json['terjual'],
      created_at: json['created_at'],
      updated_at: json['updated_at']
    );
  }
}