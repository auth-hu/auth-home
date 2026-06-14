import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/android/costom/appPar.dart';
import 'package:loea/const/color.dart';

class Storage extends StatefulWidget {
  const Storage({super.key});

  @override
  State<Storage> createState() => _StorageState();
}

class _StorageState extends State<Storage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Apppar(),
          Container(
            margin: EdgeInsets.only(top: 4),
            child: Column(
              children: [
                ListTile(
                  shape: Border(bottom: BorderSide(color: gray, width: .7)),
                  trailing: Icon(Icons.add, color: gray),
                  title: Text(
                    "اضف محموعة جديدة",
                    textAlign: TextAlign.end,
                    style: GoogleFonts.rubik(
                      color: gray,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        // ignore: sized_box_for_whitespace
                        return Container(
                          width: double.infinity,
                          height: 500,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(8),
                                width: double.infinity,
                                alignment: Alignment.centerLeft,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(Icons.close, color: gray),
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 12, right: 8),
                                width: double.infinity,
                                alignment: Alignment.centerRight,
                                child: Text(
                                  ":اسم المجموعة",
                                  style: GoogleFonts.rubik(
                                    color: gray,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: gray, width: .8)
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: gray, width: .8)
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
