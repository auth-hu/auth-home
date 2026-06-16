import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';

class Addsomefield extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  const Addsomefield({super.key, required this.title, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.symmetric(horizontal: 8),
          width: double.infinity,
          child: Text(
            ":$title",
            style: GoogleFonts.rubik(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          width: double.infinity,
          alignment: Alignment.centerRight,
          child: TextFormField(
            controller: controller,
            maxLines: 1,
            cursorColor: gray,

            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(width: 1.3, color: gray),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(width: 1.3, color: gray),
              ),
            ),
          ),
        ),
        SizedBox(height: 16,),
      ],
    );
  }
}
