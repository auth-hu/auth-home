import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';

class Infopesdata extends StatelessWidget {
  final String title;
  final String subtitle;
  const Infopesdata({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              ":$title",
              style: GoogleFonts.rubik(
                color: gray,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),

          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(top: 8),
            padding: EdgeInsets.all(8),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: black, width: 1.2),
            ),
            child: Text(
              subtitle,
              style: GoogleFonts.rubik(
                color: green,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
