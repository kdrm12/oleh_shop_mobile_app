import 'package:flutter/material.dart';
import 'package:oleh_shop_app/pages/DetailOleh.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                      // shadows: [
                      //   Shadow(
                      //       color: Colors.black,
                      //       offset: Offset(6, 4),
                      //       blurRadius: 10),
                      // ],
                    ),
                  ),
                  Icon(
                    Icons.account_circle_outlined,
                    size: 50,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 500,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: myProducts.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Image.network(
                            'https://png.pngtree.com/png-clipart/20190904/original/pngtree-photo-icon-png-image_4490555.jpg',
                            width: 80,
                            height: 80,
                          ),
                          Text(myProducts[index]["name"]),
                          Text('Rp 15.000')
                        ],
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}