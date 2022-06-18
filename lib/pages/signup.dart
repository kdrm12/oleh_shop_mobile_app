import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:oleh_shop_app/pages/signin.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen

          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/oleh.png'))),
              ),
              Container(
                padding:
                    const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Text(
                          "Register",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.alternate_email,
                            color: Color(0xFFBFBFBF)),
                        labelText: 'Email Address',
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFBFBFBF)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 158, 11),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person, color: Color(0xFFBFBFBF)),
                        labelText: 'Username',
                        labelStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFBFBFBF)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 158, 11),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                        icon: Transform.rotate(
                          angle: -40 * math.pi / -180,
                          child: const Icon(
                            Icons.key,
                            color: Color(0xFFBFBFBF),
                            size: 24,
                          ),
                        ),
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFBFBFBF)),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 158, 11),
                          ),
                        ),
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 20.0),
                    SizedBox(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        shadowColor: Color.fromARGB(255, 221, 158, 11),
                        color: Color.fromARGB(255, 221, 158, 11),
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/signin',
                            );
                          },
                          child: const Center(
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                      ),
                    ),
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
