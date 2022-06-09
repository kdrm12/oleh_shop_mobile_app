import 'package:flutter/material.dart';

class OlehDetail extends StatefulWidget {
  const OlehDetail({Key? key}) : super(key: key);

  @override
  State<OlehDetail> createState() => _OlehDetail();
}

class _OlehDetail extends State<OlehDetail> {
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
                    child: const Text(
                      'Beli',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
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
                      margin: EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Text(
                        'Berasal Dari: Bali',
                        style: TextStyle(fontSize: 15),
                      ),
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
      ),
    );
  }
}