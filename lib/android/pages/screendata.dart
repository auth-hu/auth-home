import 'package:flutter/material.dart';
import 'package:loea/android/costom/addsome.dart';
import 'package:loea/android/costom/appPar.dart';
import 'package:loea/android/costom/textFieldSearch.dart';
import 'package:loea/android/pages/data/streambuilserdata.dart';
import 'package:loea/const/color.dart';

class Screendata extends StatefulWidget {
  const Screendata({super.key});

  @override
  State<Screendata> createState() => _ScreendataState();
}

class _ScreendataState extends State<Screendata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Apppar(title: "الشاشات", search: false),

          Textfieldsearch(screen: "شاشات"),

          Addsome(screen: "شاشة",
          onTap: () {
            showModalBottomSheet(
              context: context, 
              builder: (context) {
                return Container();
              },
              );
          },
          ),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.2,
                  color: gray
                ),
                borderRadius: BorderRadius.circular(12)
              ),
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: StreamBuilderData(
                collection: "screen",
              ),
            ),
          ),
        ],
      ),
    );
  }
}