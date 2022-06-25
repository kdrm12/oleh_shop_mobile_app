import 'package:flutter/material.dart';
import 'package:oleh_shop_app/component/drawer.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var padding = MediaQuery.of(context).padding;
    var newheight = (height - padding.top - padding.bottom - kToolbarHeight);
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(title: const Text("Keranjang")),
      drawer: drawer(context),
      body: Column(
        children: [
          SizedBox(
            height: newheight * 0.9,
            child: SafeArea(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const Card(
                    child: ListTile(
                      leading: FlutterLogo(size: 56.0),
                      title: Text('Lorem Ipsum'),
                      subtitle: Text('Rp15000 (2x)'),
                      trailing: Icon(Icons.delete),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            height: newheight * 0.1,
            color: Colors.orange.shade100,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Total : Rp20000",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    height: newheight * 0.1,
                    width: width * 0.2,
                    color: Colors.green,
                    child: const Center(
                        child: Text(
                      "Order",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
