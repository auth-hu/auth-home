// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_cast, file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';
import 'package:loea/const/textEditController.dart';

class StreamBuilderData extends StatefulWidget {
  final String collection;
  StreamBuilderData({super.key, required this.collection,});

  @override
  State<StreamBuilderData> createState() => _StreamBuilderDataState();
}

class _StreamBuilderDataState extends State<StreamBuilderData> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: searchController.text.isNotEmpty ? FirebaseFirestore.instance.collection(widget.collection).where('createSearchKewwords', arrayContains: searchController.text.trim().toLowerCase(), isEqualTo: searchController.text.trim().toLowerCase()).snapshots() : FirebaseFirestore.instance.collection(widget.collection).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text("حدث خطأ"));
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return Center(child: Text("لا يوجد بيانات"));
        }

        final docs = snapshot.data!.docs;

        return ListView.builder(
          itemCount: docs.length,
          itemBuilder: (context, index) {
            final data = docs[index].data() as Map<String, dynamic>;

            return ListTile(
              leading: Text("${index+1}", style: GoogleFonts.rubik(color: darkred, fontSize: 16)),
              title: Text(data['name'], style: GoogleFonts.rubik(),),
              subtitle: Text("عدد القطع: ${data['pieces']}", style: GoogleFonts.rubik(),),
              trailing: Text("${data['CompanyPrice']} IDQ", style: GoogleFonts.rubik(color: green),),
              shape: Border(
                bottom: BorderSide(
                  width: 1.2,
                  color: gray
                )
              ),
            );
          },
        );
      },
    );
  }
}
