import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';
import 'package:loea/const/listpages.dart';

class Storagelist extends StatefulWidget {
  const Storagelist({super.key});

  @override
  State<Storagelist> createState() => _StoragelistState();
}

class _StoragelistState extends State<Storagelist> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1100,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
        ),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: black,
                  width: .4
                ),
                boxShadow: [
                  BoxShadow(
                    color: darkred.withValues(alpha: .3),
                    blurRadius: 18,
                    spreadRadius: 2,
                    offset: Offset(4, 0),
                  ),
                ],
                color: pcColorGird[index],
                borderRadius: BorderRadius.circular(24),
              ),
              width: 200,
              height: 250,
              child: ListTile(
                subtitle: Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text(
                    data[index],
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.bold,
                      color: milk,
                      fontSize: 18,
                    ),
                  ),
                ),
      
                title: imagedata2[index],

                focusColor: black,
              ),
            ),
          );
        },
      ),
    );
  }
}
