import 'package:flutter/material.dart';
import 'package:loea/android/costom/appPar.dart';
import 'package:loea/android/pages/data/streambuilserdata.dart';
import 'package:loea/const/color.dart';

class Screeninfopage extends StatefulWidget {
  const Screeninfopage({super.key});

  @override
  State<Screeninfopage> createState() => _ScreeninfopageState();
}

class _ScreeninfopageState extends State<Screeninfopage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Apppar(title: "الشاشات", search: true),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: gray, width: 1.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: StreamBuilderData(collection: 'screen'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
