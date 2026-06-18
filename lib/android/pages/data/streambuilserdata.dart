// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_cast, file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/android/costom/infopesdata.dart';
import 'package:loea/const/color.dart';
import 'package:loea/const/textEditController.dart';

class StreamBuilderData extends StatefulWidget {
  final String collection;
  StreamBuilderData({super.key, required this.collection});

  @override
  State<StreamBuilderData> createState() => _StreamBuilderDataState();
}

class _StreamBuilderDataState extends State<StreamBuilderData> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: searchController.text.isNotEmpty
          ? FirebaseFirestore.instance
                .collection(widget.collection)
                .where(
                  'createSearchKewwords',
                  arrayContains: searchController.text.trim().toLowerCase(),
                  isEqualTo: searchController.text.trim().toLowerCase(),
                )
                .snapshots()
          : FirebaseFirestore.instance
                .collection(widget.collection)
                .snapshots(),
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
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: docs.length,
          itemBuilder: (context, index) {
            final data = docs[index].data() as Map<String, dynamic>;

            return ListTile(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: milk,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: 320,
                        height: 500,
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  ":معلومات المنتج",
                                  style: GoogleFonts.rubik(
                                    color: gray,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Infopesdata(title: "اسم المنتج", subtitle: data['name']),
                              Infopesdata(title: "العدد", subtitle: data['pieces']),
                              Infopesdata(title: "سعر الجملة", subtitle: data['CompanyPrice']),
                              Infopesdata(title: "المتشابه", subtitle: data['likeScreen']),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              leading: Text(
                "${index + 1}",
                style: GoogleFonts.rubik(color: darkred, fontSize: 16),
              ),
              title: Text(data['name'], style: GoogleFonts.rubik()),
              subtitle: Text(
                "عدد القطع: ${data['pieces']}",
                style: GoogleFonts.rubik(),
              ),
              trailing: Text(
                data['CompanyPrice'],
                style: GoogleFonts.rubik(color: green, fontSize: 14),
              ),
              shape: Border(bottom: BorderSide(width: 1.2, color: gray)),
            );
          },
        );
      },
    );
  }
}
