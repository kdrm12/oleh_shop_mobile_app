import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oleh Shop',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  //State<MyHomePage> createState() => _MyHomePageState();
  State<MyHomePage> createState() => _OlehItem();
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

class _OlehItem extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
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
                  child: Image.network(
                    'https://png.pngtree.com/png-clipart/20190904/original/pngtree-photo-icon-png-image_4490555.jpg',
                    width: 300,
                    height: 300,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product 1',
                      style: TextStyle(fontSize: 30),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.yellow,
                      width: 60,
                      height: 30,
                      child: const Text('Beli', style: TextStyle(fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
                Text(
                  'Rp15000',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.yellow[700],
                  ),
                ),
                Text('900 terjual'),
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
                        margin: EdgeInsets.only(bottom: 10,),
                          child: Text('Berasal Dari: Bali', style: TextStyle(fontSize: 15),),
                      ),
                      Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                          'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                          'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                          'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                          'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
