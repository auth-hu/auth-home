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
        unselectedItemColor: gray,
        selectedItemColor: gray,
        currentIndex: currentPage,
        onTap: (index){
          setState(() {
            currentPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: gray,
            ),
            label: "الرئيسية",
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store,
            color: gray,
            ),
            label: "المخزن"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add,
            color: gray,
            ),
            label: "الطلبات"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics,
            color: gray,
            ),
            label: "الاحصائيات"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sticky_note_2_rounded,
            color: gray,
            ),
            label: "النواقص"
            ),
        ],
        ),
    );
  }
}
