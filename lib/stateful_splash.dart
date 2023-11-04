import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_practice_project/login_page.dart';
import 'package:lottie/lottie.dart';

//import 'login_page.dart';
import 'sign_in.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash2(),
  ));
}

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State createState() => _Splash2state();
}

class _Splash2state extends State {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SignIn ()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Lottie.network(
              "https://lottie.host/0b3dc3fd-ec5d-4c90-9ee5-e84e1dee4df0/tkUmFuucu8.json",
              height: 100,
              width: 100)),
    );
  }
}
