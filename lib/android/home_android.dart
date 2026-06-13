// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';
import 'package:loea/const/listpages.dart';

class homeAndriod extends StatefulWidget {
  const homeAndriod({super.key});

  @override
  State<homeAndriod> createState() => _homeAndriodState();
}

class _homeAndriodState extends State<homeAndriod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: milk,
      body: SafeArea(
        child: Pages[currentPage],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: gray,
        unselectedItemColor: gray,
        selectedLabelStyle: TextStyle(color: gray),
        unselectedLabelStyle: TextStyle(color: gray),
        currentIndex: currentPage,
        onTap: (index){
          setState(() {
            currentPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "الرئيسية"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: "المخزن"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "الطلبات"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: "الاحصائيات"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sticky_note_2_rounded),
            label: "النواقص"
            ),
        ],
        ),
    );
  }
}
