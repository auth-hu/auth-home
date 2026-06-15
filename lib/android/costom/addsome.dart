import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';

class Addsome extends StatelessWidget {
  final String screen;
  final Function()? onTap;
  const Addsome({super.key, required this.screen, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12, left: 12, bottom: 8),
      child: ListTile(
        onTap: onTap,
        trailing: Icon(Icons.add, color: green, size: 28,),
        isThreeLine: false,
        title: Text(
          "أضف $screen",
          textAlign: TextAlign.end,
          style: GoogleFonts.rubik(
              color: green.withValues(alpha: .7)
            ),
        ),
        shape: Border.all(
          color: green,
          width: 1.3
        ),
      ),
    );
  }
}