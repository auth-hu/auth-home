import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';

class Costominfo extends StatelessWidget {
  final String name;
  final String subName;
  const Costominfo({super.key, required this.name, required this.subName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.symmetric(vertical: 8,),
            child: Text(
              name.isNotEmpty ? ": $name" : "",
              style: GoogleFonts.rubik(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: gray,
                decoration: TextDecoration.none
              ),
            ),
          ),

          Container(
            width: double.infinity,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: green,
                width: 1.5
              ),
            ),
            child: Text(
              subName.isNotEmpty ? subName : '',
              style: GoogleFonts.rubik(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: green,
                decoration: TextDecoration.none
              ),
            ),
          )
        ],
      ),
    );
  }
}