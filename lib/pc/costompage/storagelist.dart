import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/android/costom/appPar.dart';
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
    return Column(
        children: [
          Apppar(title: "", search: true),
          Container(
            margin: EdgeInsets.only(top: 4),
            child: Column(
              children: [
                Container(
                  height: 300,
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => dataPagePC[index],
                            ),
                          );
                        },
                        isThreeLine: false,
                        trailing: imagedata[index],
                        title: Text(
                          data[index],
                          textAlign: TextAlign.end,
                          style: GoogleFonts.rubik(),
                        ),
                        shape: Border(
                          bottom: BorderSide(color: gray, width: .8),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  }
}


