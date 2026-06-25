import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';
import 'package:loea/pc/const/list.dart';

class Listaddcost extends StatelessWidget {
  const Listaddcost({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            width: 1240,
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: addcostomermune.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  alignment: Alignment.center,
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: milk.withValues(alpha: .7),
                    border: Border.all(color: gray, width: 1.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                   addcostomermune[index],
                   textAlign: TextAlign.center,
                   style: GoogleFonts.rubik(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                   ),
                   ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
