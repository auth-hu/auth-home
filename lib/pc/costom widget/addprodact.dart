import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';

class Addprodact extends StatelessWidget {
  final String title;
  late String? doc;
  final TextEditingController controller;
  Addprodact({super.key, required this.controller, required this.title, this.doc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.zero,
            alignment: Alignment.centerRight,
            child: Text(
              ": $title",
              style: GoogleFonts.rubik(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: gray
              ),
            ),
          ),

          SizedBox(height: 6,),

          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.zero,
            child: TextFormField(
              controller: controller,
              maxLines: 1,
              cursorColor: gray,
              decoration: InputDecoration(
                labelText: doc,
                labelStyle: GoogleFonts.rubik(
                fontWeight: FontWeight.bold,
                color: gray
              ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: gray, width: 1.4)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: gray, width: 1.4)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}