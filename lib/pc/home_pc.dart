// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:loea/const/bool.dart';
import 'package:loea/pc/costom%20widget/appPar.dart';

class homePc extends StatefulWidget {
  const homePc({super.key});

  @override
  State<homePc> createState() => _homePcState();
}

class _homePcState extends State<homePc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Apppar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: home ? Text("start") : Text(""),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}