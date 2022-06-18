import 'package:flutter/material.dart';
import 'package:oleh_shop_app/models/oleh.dart';
import 'package:cached_network_image/cached_network_image.dart';

class OlehDetail extends StatefulWidget {
  const OlehDetail({Key? key}) : super(key: key);

  @override
  State<OlehDetail> createState() => _OlehDetail();
}

class _OlehDetail extends State<OlehDetail> {
  @override
  Widget build(BuildContext context) {
    final entry = ModalRoute.of(context)!.settings.arguments as oleh;
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.yellow,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(bottom: 20),
                child: CachedNetworkImage(
                  imageUrl: 'http://10.0.2.2:8000/storage/' + entry.gambar,
                  //width: 300,
                  height: 300,
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    entry.nama,
                    style: const TextStyle(fontSize: 30),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.yellow,
                    width: 60,
                    height: 30,
                    child: const Text(
                      'Beli',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Text(
                entry.harga.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.yellow[700],
                ),
              ),
              Text(entry.terjual.toString() + ' terjual'),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Deskripsi',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 10,
                      ),
                      // child: Text(
                      //   'Berasal Dari: Bali',
                      //   style: TextStyle(fontSize: 15),
                      // ),
                    ),
                    Text(entry.deskripsi)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
