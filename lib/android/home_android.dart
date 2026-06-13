// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';

class homeAndriod extends StatefulWidget {
  const homeAndriod({super.key});

  @override
  State<homeAndriod> createState() => _homeAndriodState();
}

class _homeAndriodState extends State<homeAndriod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: milk,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  color: gray, 
                  width: double.infinity,
                  child: Text(
                    "loea",
                    style: GoogleFonts.rubik(
                      color: milk,
                      fontSize: 18
                    ),
                    )
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
