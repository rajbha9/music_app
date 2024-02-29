import 'dart:async';

import 'package:flutter/material.dart';

class Spalesh extends StatefulWidget {
  const Spalesh({super.key});

  @override
  State<Spalesh> createState() => _SpaleshState();
}

class _SpaleshState extends State<Spalesh> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff451952).withOpacity(0.8),
            Color(0xff662549).withOpacity(0.8),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      body: Center(
      child: Image.asset(
      'assets/img/hey.gif',
    ),)
    ,
    )
    ,
    );
  }
}
