import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loea/android/home_android.dart';
import 'package:loea/pc/home_pc.dart';

void main() {
  runApp(const MyApp());
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
      home: Platform.isAndroid ? homeAndriod() : homePc(),
    );
  }
}