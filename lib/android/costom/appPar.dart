// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';

class Apppar extends StatefulWidget {
  const Apppar({super.key});

  @override
  State<Apppar> createState() => _AppparState();
}

class _AppparState extends State<Apppar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.all(4),
      color: gray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            IconButton(
              onPressed: () {
                
              },
               icon: Icon(
                Icons.search,
                color: milk,
                )
               ),

          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 12),
              child: Text(
                "المخزن",
                textAlign: TextAlign.end,
                style: GoogleFonts.rubik(
                  color: milk,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}