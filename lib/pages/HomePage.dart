import 'package:flutter/material.dart';
import 'package:oleh_shop_app/models/oleh.dart';
import 'package:oleh_shop_app/webservice/WebService.dart';
import 'package:cached_network_image/cached_network_image.dart';

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

  void _loadOleh() async {
    final webservice = WebService();
    final results = await webservice.loadOleh();
    setState(() {
      _oleh = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text("Home")),
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
                height: 42,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  border: Border.all(color: Colors.black26),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.search), border: InputBorder.none),
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
                      onTap: () {
                        Navigator.pushNamed(ctx, '/detail',
                            arguments: _oleh[index]);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 90,
                              width: 185,
                              child: CachedNetworkImage(
                                imageUrl: 'http://10.0.2.2:8000/storage/' +
                                    _oleh[index].gambar,
                                //width: 80,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _oleh[index].nama,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text("Rp" + _oleh[index].harga.toString()),
                                ],
                              ),
                            )
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
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Kevin"),
              accountEmail: Text("081285770221"),
            ),
            const ListTile(
              selected: true,
              leading: CircleAvatar(
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text("Keranjang"),
              //onTap: () {},
            ),
            ListTile(
              selected: true,
              leading: const CircleAvatar(
                child: Icon(
                  Icons.list_alt,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: const Text("Pesanan"),
              onTap: () {
                Navigator.pushNamed(context, '/pesanan');
              },
            ),
            ListTile(
              selected: true,
              leading: const CircleAvatar(
                child: Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: const Text("Log Out"),
              onTap: () {
                Navigator.pushNamed(context, '/logout');
              },
            ),
          ],
        ),
      ),
    );
  }
}
