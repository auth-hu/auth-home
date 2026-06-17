// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/bool.dart';
import 'package:loea/const/color.dart';
import 'package:loea/pc/const/list.dart';
import 'package:loea/pc/costom%20widget/munelist.dart';

class Apppar extends StatefulWidget {
  const Apppar({super.key});

  @override
  State<Apppar> createState() => _AppparState();
}

class _AppparState extends State<Apppar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          color: gray,
          padding: EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             /* Start Logo Section */
              Container(
                margin: EdgeInsets.zero,
                child: Text(
                  "مكتب النور",
                  style: GoogleFonts.rubik(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: milk,
                  ),
                ),
              ),

              /* End Logo Section */

              /* Taps Seection Start */

              DefaultTabController(
                length: 5,
                child: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.home), text: "الرئيسية",)
                  ]
                  )
                )


              /* Taps Seection End */
            ],
          ),
        );
      },
    );
  }
}
