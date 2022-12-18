import 'package:flutter/material.dart';
import 'package:tiga/StateManagement/state.dart';
import 'package:tiga/home.dart';
import 'package:tiga/page_dua.dart';
import 'package:tiga/page_tiga.dart';
import 'package:tiga/welconscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: HomeApp(),
    );
  }
}
