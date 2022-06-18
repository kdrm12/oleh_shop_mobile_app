import 'package:flutter/material.dart';
import 'package:oleh_shop_app/pages/HomePage.dart';
import 'package:oleh_shop_app/pages/DetailOlehPage.dart';
import 'package:oleh_shop_app/pages/signin.dart';
import 'package:oleh_shop_app/pages/signup.dart';
import 'package:oleh_shop_app/pages/pesananPage.dart';

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
      initialRoute: '/signup',
      routes: {
        '/signup': (context) => const SignUpPage(),
        '/signin': (context) => const SignInPage(),
        '/home': (context) => const MyHomePage(),
        '/detail': (context) => const OlehDetail(),
        // '/keranjang': (context) => const,
        '/pesanan': (context) => const PesananPage(),
      },
      //home: const MyHomePage(),
    );
  }
}
