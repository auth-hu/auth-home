// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';
import 'package:loea/const/listpages.dart';
import 'package:loea/pc/const/var.dart';


class Straembuilderforpc extends StatefulWidget {
  final String collection;
  const Straembuilderforpc({super.key, required this.collection});

  @override
  State<Straembuilderforpc> createState() => _StraembuilderforpcState();
}

class _StraembuilderforpcState extends State<Straembuilderforpc> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection(widget.collection).snapshots(),
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

        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: docs.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Container(
                margin: EdgeInsets.all(8),
                child: Material(
                  color: pcColorGird[index % pcColorGird.length],
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    margin: EdgeInsets.zero,
                    width: 200,
                    height: 250,
                    child: InkWell(
                      onTap: (){
                          var selectedDoc = docs[index].reference;
                          docId = selectedDoc;
                          namelist = '${docs[index]['name']}';
                          pieces = '${docs[index]['pieces']}';
                          price = '${docs[index]['CompanyPrice']}';
                          like = '${docs[index]['likeScreen']}';
                          
                      },
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(2),
                              child: Icon(
                                Icons.screenshot_rounded,
                                color: milk,
                                size: 72,
                              ),
                            ),
                          ),
                                      
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                              child: Text(
                                docs[index]['name'],
                                style: GoogleFonts.rubik(
                                  color: milk,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                                      
                          Container(
                            margin: EdgeInsets.all(6),
                            child: Text(
                              docs[index]['pieces'],
                              style: GoogleFonts.rubik(
                                color: green,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                                      
                          Container(
                            margin: EdgeInsets.all(12),
                            child: Text(
                              docs[index]['CompanyPrice'],
                              style: GoogleFonts.rubik(
                                color: green,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
