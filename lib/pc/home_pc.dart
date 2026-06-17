// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

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
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("مكتب النور",),

            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: "الرئيسية"),
                Tab(icon: Icon(Icons.storage), text: "المخزن"),
                Tab(icon: Icon(Icons.add), text: "أضافة طلب"),
                Tab(icon: Icon(Icons.analytics), text: "الأحصائيات"),
                Tab(icon: Icon(Icons.paste_outlined), text: "النواقص"),
              ],
            ),
          ),

          body: const TabBarView(
            children: [
              Center(child: Text("الصفحة الأولى")),
              Center(child: Text("الصفحة الثانية")),
              Center(child: Text("الصفحة الثالثة")),
            ],
          ),
        ),
      ),
    );
  }
}