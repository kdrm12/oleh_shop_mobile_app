import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:oleh_shop_app/pages/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

// ignore: camel_case_types
class _splashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const SignUpPage())));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Color.fromARGB(255, 241, 225, 4),
      splash: 'assets/images/oleh.png',
      nextScreen: const SignUpPage(),
      splashTransition: SplashTransition.rotationTransition,
      // child: Scaffold(
      //   body: SizedBox.expand(
      //     child: Container(
      //       color: const Color(0xFF0B9ADD),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: <Widget>[
      //           Container(
      //             height: MediaQuery.of(context).size.height,
      //             decoration: const BoxDecoration(
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/images/Logo.png"))),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
