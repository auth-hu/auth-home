import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';
import 'package:loea/pc/const/list.dart';
import 'package:loea/pc/const/var.dart';
import 'package:loea/pc/costompage/costominfo.dart';

class Screeninfopage extends StatefulWidget {
  const Screeninfopage({super.key});

  @override
  State<Screeninfopage> createState() => _ScreeninfopageState();
}

class _ScreeninfopageState extends State<Screeninfopage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(12),
                child: Icon(Icons.screenshot_rounded, color: gray, size: 72),
              ),

              Costominfo(name: names[0], subName: namelist),
              Costominfo(name: names[1], subName: count),
              Costominfo(name: names[2], subName: price),
              Costominfo(name: names[3], subName: like),

              Container(
                color: green,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 18, horizontal: 12),
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        child: Icon(Icons.add, color: milk,),
                          ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        child: Text(
                          'أضافة',
                          style: GoogleFonts.rubik(
                            fontSize: 18,
                            color: milk,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                        ]
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
