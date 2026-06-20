import 'package:flutter/material.dart';
import 'package:loea/const/color.dart';
import 'package:loea/pc/costompage/screen/screeninfopage.dart';
import 'package:loea/pc/costompage/screen/screenpage.dart';

class Screenstorage extends StatefulWidget {
  const Screenstorage({super.key});

  @override
  State<Screenstorage> createState() => _ScreenstorageState();
}

class _ScreenstorageState extends State<Screenstorage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(flex: 3, child: Screenpage()),
          Container(width: 2, decoration: BoxDecoration(color: darkred, borderRadius: BorderRadius.circular(24)),),
          Expanded(child: Screeninfopage()),
        ],
      )
      );
  }
}