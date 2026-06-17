// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';
import 'package:loea/pc/Pages/addcostemor.dart';
import 'package:loea/pc/Pages/ansalze.dart';
import 'package:loea/pc/Pages/home.dart';
import 'package:loea/pc/Pages/mylist.dart';
import 'package:loea/pc/Pages/storage.dart';

class homePc extends StatefulWidget {
  const homePc({super.key});

  @override
  State<homePc> createState() => _homePcState();
}

class _homePcState extends State<homePc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Text("مكتب النور", textAlign: TextAlign.end),
            ),
            leading: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: IconButton(
                hoverColor: Color(0xffffffff),
                onPressed: () {},
                icon: Icon(Icons.search, color: gray,),
              ),
            ),
            titleTextStyle: GoogleFonts.rubik(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: gray,
            ),
            bottom: TabBar(
              indicatorColor: green,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: gray,
              labelColor: green,
              tabs: [
                Tab(icon: Icon(Icons.home), text: "الرئيسية"),
                Tab(icon: Icon(Icons.storage), text: "المخزن"),
                Tab(icon: Icon(Icons.add), text: "أضافة طلب"),
                Tab(icon: Icon(Icons.analytics), text: "الأحصائيات"),
                Tab(icon: Icon(Icons.paste_outlined), text: "النواقص"),
              ],
            ),
          ),

          body: TabBarView(
            children: [Home(), Storage(), Addcostemor(), Ansalze(), Mylist()],
          ),
        ),
      ),
    );
  }
}
