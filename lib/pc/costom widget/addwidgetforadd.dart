import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';

class Addwidgetforadd extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  final Function()? onTap;
  final Function(String)? onChanged;
  const Addwidgetforadd({super.key, required this.controller, required this.name, this.onTap, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          alignment: Alignment.centerRight,
          child: Text(
            ": $name",
            style: GoogleFonts.rubik(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: gray,
            ),
          ),
        ),

        SizedBox(height: 12),

        Material(
          child: Container(
            margin: EdgeInsets.only(left: 64),
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: TextFormField(
              onTap: onTap,
              onChanged: onChanged,
              controller: controller,
              textAlign: TextAlign.end,
              maxLines: 1,
              cursorColor: gray,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: gray, width: 1.3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: gray, width: 1.3),
                ),
              ),
            ),
          ),
        ),

        SizedBox(height: 16,)
      ],
    );
  }
}
