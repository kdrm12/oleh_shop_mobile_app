import 'package:flutter/material.dart';

class PesananPage extends StatefulWidget {
  const PesananPage({Key? key}) : super(key: key);

  @override
  State<PesananPage> createState() => _PesananPageState();
}

class _PesananPageState extends State<PesananPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.menu,
                    size: 50,
                  ),
                  Text(
                    'OLEH SHOP',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Colors.black87,
                    ),
                  ),
                  Icon(
                    Icons.account_circle_outlined,
                    size: 50,
                  ),
                ],
              ),
              Text("ID Pemesanan",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 10,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200.0,
                    height: 25.0,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.grey, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text("12345678", style: TextStyle(fontSize: 10)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    child: Text('Belum Bayar'),
                  ),
                ],
              ),
              Text("ID Pemesanan",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 10,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200.0,
                    height: 25.0,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.grey, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text("12345678", style: TextStyle(fontSize: 10)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Text('Belum Diambil'),
                  ),
                ],
              ),
              Text("ID Pemesanan",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 10,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200.0,
                    height: 25.0,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.grey, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text("12345678", style: TextStyle(fontSize: 10)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    child: Text('Sudah Diambil'),
                  ),
                ],
              ),
              Text("ID Pemesanan",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 10,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200.0,
                    height: 25.0,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.grey, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text("12345678", style: TextStyle(fontSize: 10)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Respond to button press
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    child: Text('Batal'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
