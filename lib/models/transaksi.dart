class Transaksi {
  final int id;
  final int total_harga;
  final String tanggal_dipesan;
  final String? tanggal_dibayar;
  final String status;

  const Transaksi({
    required this.id,
    required this.total_harga,
    required this.tanggal_dipesan,
    required this.tanggal_dibayar,
    required this.status,
  });

  factory Transaksi.fromJson(Map<String, dynamic> json) {
    return Transaksi(
      id: json['id'],
      total_harga: json['total_harga'],
      tanggal_dipesan: json['tanggal_dipesan'],
      tanggal_dibayar: json['tanggal_dibayar'],
      status: json['status'],
    );
  }
}
