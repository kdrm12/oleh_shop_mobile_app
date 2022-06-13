import 'package:flutter/material.dart';
import 'package:oleh_shop_app/pages/HomePage.dart';
import 'package:oleh_shop_app/pages/DetailOleh.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oleh Shop',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/detail': (context) => const OlehDetail(),
      },
      //home: const MyHomePage(),
    );
  }
}
