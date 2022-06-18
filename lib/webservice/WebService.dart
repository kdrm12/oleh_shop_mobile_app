import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/oleh.dart';

class WebService {
  Future<List<oleh>> loadOleh() async {
    String url = "http://10.0.2.2:8000/api/oleh/get/";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final Iterable list = json;
      return list.map((item) => oleh.fromJson((item))).toList();
    } else {
      throw Exception('Gagal mengambil data oleh-oleh');
    }
  }
}
