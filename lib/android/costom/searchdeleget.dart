import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/android/costom/infopesdata.dart';
import 'package:loea/const/color.dart';
import 'package:loea/const/firebasefirestore.dart';

int random = Random().nextInt(15) + 10;

class Searchdelegetapp extends SearchDelegate<dynamic> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List newList = screen.where((element) {
      return element['createSearchKewwords'].toString().toLowerCase().contains(
        query.toLowerCase(),
      );
    }).toList();
    if (query == '') {
      return ListView.builder(
        itemCount: screen.length,
        itemBuilder: (context, index) {
          final data = screen[index];
          return InkWell(
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
                            Infopesdata(
                              title: "اسم المنتج",
                              subtitle: data['name'],
                            ),
                            Infopesdata(
                              title: "العدد",
                              subtitle: data['pieces'],
                            ),
                            Infopesdata(
                              title: "سعر الجملة",
                              subtitle: data['CompanyPrice'],
                            ),
                            Infopesdata(
                              title: "المتشابه",
                              subtitle: data['likeScreen'],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: gray, width: 1.2)),
              ),

              child: Text(
                screen[index]['name'],
                style: GoogleFonts.rubik(color: gray),
              ),
            ),
          );
        },
      );
    } else {
      return ListView.builder(
        itemCount: newList.length,
        itemBuilder: (context, index) {
          final data = screen[index];
          return InkWell(
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
                            Infopesdata(
                              title: "اسم المنتج",
                              subtitle: data['name'],
                            ),
                            Infopesdata(
                              title: "العدد",
                              subtitle: data['pieces'],
                            ),
                            Infopesdata(
                              title: "سعر الجملة",
                              subtitle: data['CompanyPrice'],
                            ),
                            Infopesdata(
                              title: "المتشابه",
                              subtitle: data['likeScreen'],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: gray, width: 1.2)),
              ),
            
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(margin: EdgeInsets.only(left: 12), child: Text(newList[index]['name'], style: GoogleFonts.rubik(color: gray, fontSize: 12),)),
                  Text(newList[index]['pieces'], style: GoogleFonts.rubik(color: gray, fontSize: 12),),
                  Container(margin: EdgeInsets.only(right: 12), child: Text(newList[index]['CompanyPrice'], style: GoogleFonts.rubik(color: green, fontSize: 14),)),
                ],
              ),
            ),
          );
        },
      );
    }
  }
}
