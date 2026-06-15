// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';

class Munelist extends StatelessWidget {
  final Function()? onPressed;
  final IconData icon;
  final String text;
  late bool active;
  Munelist({super.key, required this.onPressed, required this.icon, required this.text, required this.active});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(18),
      hoverColor: milk.withValues(alpha: .2),
      color: active ? milk : black,
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(icon, color: active ? gray : milk,),

          SizedBox(width: 12,),

          Text(
            text,
            style: GoogleFonts.rubik(
              color: active ? gray : milk,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}