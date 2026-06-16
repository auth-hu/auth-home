// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';

class Textfieldsearch extends StatelessWidget {
  final String screen;
  final TextEditingController controller;
  final Function(String)? onChanged;
  const Textfieldsearch({super.key, required this.screen, required this.controller, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        maxLines: 1,
        cursorColor: gray,

        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1.3, color: gray)
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1.3, color: gray)
          ),
          label: Text(
            "ابحث هنا عن $screen",
            textAlign: TextAlign.end,
            style: GoogleFonts.rubik(
              color: gray.withValues(alpha: .7)
            ),
          )
        ),
      ),
    );
  }
}