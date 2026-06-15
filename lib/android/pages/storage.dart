// ignore_for_file: sized_box_for_whitespace

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/android/costom/appPar.dart';
import 'package:loea/const/color.dart';
import 'package:loea/const/listpages.dart';

class Storage extends StatefulWidget {
  const Storage({super.key});

  @override
  State<Storage> createState() => _StorageState();
}

class _StorageState extends State<Storage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Apppar(title: "المخزن", search: true,),
          Container(
            margin: EdgeInsets.only(top: 4),
            child: Column(
              children: [
                Container(
                  height: 600,
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        trailing: imagedata[index],
                        title: Text(data[index], textAlign: TextAlign.end, style: GoogleFonts.rubik(),),
                        subtitle: Text(''),
                        shape: Border(
                          bottom: BorderSide(
                            color: gray,
                            width: .8
                          )
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
