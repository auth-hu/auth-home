// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/android/costom/searchdeleget.dart';
import 'package:loea/android/home_android.dart';
import 'package:loea/const/color.dart';
import 'package:loea/const/firebasefirestore.dart';

class Apppar extends StatefulWidget {
  final String title;
  final bool search;
  const Apppar({super.key, required this.title, required this.search});

  @override
  State<Apppar> createState() => _AppparState();
}

class _AppparState extends State<Apppar> {
  @override
  void initState() {
    super.initState();
    getScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.search ? EdgeInsets.all(0) : EdgeInsets.all(12),
      alignment: Alignment.centerRight,
      color: gray,
      child: Container(
        margin: widget.search ? EdgeInsets.all(4) : EdgeInsets.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: Searchdelegetapp());
              },
              icon: Icon(Icons.search, color: milk),
            ),

            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 12),
                child: Text(
                  widget.title,
                  textAlign: TextAlign.end,
                  style: GoogleFonts.rubik(
                    color: milk,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
