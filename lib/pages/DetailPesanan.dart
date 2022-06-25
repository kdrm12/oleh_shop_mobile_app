import 'package:flutter/material.dart';

class DetailPesanan extends StatefulWidget {
  const DetailPesanan({Key? key}) : super(key: key);

  @override
  State<DetailPesanan> createState() => _DetailPesananState();
}

class _DetailPesananState extends State<DetailPesanan> {
  @override
  Widget build(BuildContext context) {
    final List<Map> myProducts =
        List.generate(10, (index) => {"name": "Product $index"}).toList();

    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: const [
              //     Icon(
              //       Icons.menu,
              //       size: 50,
              //     ),
              //     Text(
              //       'OLEH SHOP',
              //       style: TextStyle(
              //         fontSize: 40,
              //         fontWeight: FontWeight.w900,
              //         color: Colors.black87,
              //       ),
              //     ),
              //     Icon(
              //       Icons.account_circle_outlined,
              //       size: 50,
              //     ),
              //   ],
              // ),
              Container(
                width: 500.0,
                height: 25.0,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.grey, width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text("ID Pemesanan: #ID_Pemesanan",
                    style: TextStyle(fontSize: 10)),
              ),
              Container(
                width: 500.0,
                height: 25.0,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.grey, width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text("No Pembayaran: #no_pembayaran",
                    style: TextStyle(fontSize: 10)),
              ),
              Container(
                width: 500.0,
                height: 25.0,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.grey, width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text("Tanggal Pemesanan: #Tanggal_Pemesanan",
                    style: TextStyle(fontSize: 10)),
              ),
              Container(
                width: 500.0,
                height: 25.0,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.grey, width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text("Bukti Pembayaran: #Bukti_Pembayaran",
                    style: TextStyle(fontSize: 10)),
              ),
              Text("Total: "),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                child: Text('BAYAR'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
