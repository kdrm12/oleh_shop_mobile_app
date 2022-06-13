import 'package:flutter/material.dart';
import 'package:oleh_shop_app/models/oleh.dart';
import 'package:oleh_shop_app/webservice/WebService.dart';
import 'package:oleh_shop_app/pages/DetailOleh.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<oleh> _oleh = <oleh>[];

  @override
  void initState() {
    super.initState();
    _loadOleh();
  }

  void _loadOleh() async{
    final webservice = WebService();
    final results = await webservice.loadOleh();
    setState(() {
      _oleh = results;
    });
  }

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
                  itemCount: _oleh.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(ctx, '/detail', arguments: _oleh[index]);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Image.network(
                              'http://10.0.2.2:8000/storage/'+_oleh[index].gambar,
                              //width: 80,
                              height: 90,
                              fit:BoxFit.fill
                            ),
                            Text(_oleh[index].nama),
                            Text(_oleh[index].harga.toString())
                          ],
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                        ),
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