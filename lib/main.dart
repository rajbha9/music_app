import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'modules/views/screen/homepage.dart';
import 'modules/views/screen/spalesh.dart';
import 'modules/views/screen/video_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'spalesh',
      routes: {
        '/': (context) => HomePage(),
        'spalesh': (context) => Spalesh(),
        'video': (context) => const VideoScreen(),
      },
    );
  }
}
