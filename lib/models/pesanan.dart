import 'package:flutter/cupertino.dart';

class Pesanan {
  final int id;
  final int jumlah_item;
  final int id_oleh;
  final int id_transaksi;

  const Pesanan({
    required this.id,
    required this.jumlah_item,
    required this.id_oleh,
    required this.id_transaksi,
  });

  factory Pesanan.fromJson(Map<String, dynamic> json) {
    return Pesanan(
      id: json['id'],
      jumlah_item: json['jumlah_item'],
      id_oleh: json['jumlah_oleh'],
      id_transaksi: json['id_transaksi'],
    );
  }
}
