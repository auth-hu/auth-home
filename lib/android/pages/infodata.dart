import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/android/costom/addsome.dart';
import 'package:loea/android/costom/addsomefield.dart';
import 'package:loea/android/costom/appPar.dart';
import 'package:loea/android/costom/textFieldSearch.dart';
import 'package:loea/android/func/addsomefun.dart';
import 'package:loea/android/pages/data/streambuilserdata.dart';
import 'package:loea/const/color.dart';
import 'package:loea/const/textEditController.dart';

class Infodata extends StatefulWidget {
  const Infodata({super.key});

  @override
  State<Infodata> createState() => _InfodataState();
}

class _InfodataState extends State<Infodata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Apppar(title: "ناقل معلومات", search: false),

            Textfieldsearch(
              screen: "ناقل معلومات",
              controller: searchController,
              onChanged: (p0) {
                setState(() {});
              },
            ),

            Addsome(
              screen: "ناقل معلومات",
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      margin: EdgeInsets.zero,
                      width: double.infinity,
                      child: Container(
                        margin: EdgeInsets.only(top: 12),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(4),
                                width: double.infinity,
                                alignment: Alignment.centerLeft,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(Icons.close, color: gray),
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Form(
                                      key: addScreen,
                                      child: Column(
                                        children: [
                                          Addsomefield(
                                            title: "اسم المنتج",
                                            controller: nameController,
                                          ),
                                          Addsomefield(
                                            title: "العدد",
                                            controller: piecesController,
                                          ),
                                          Addsomefield(
                                            title: "سعر الجملة",
                                            controller: companyPriceController,
                                          ),
                                          Addsomefield(
                                            title: "نواقل شحن متشابهة",
                                            controller: likeController,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 32),

                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: green,
                                        border: Border.all(
                                          color: gray,
                                          width: 1.2,
                                        ),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 12,
                                      ),
                                      child: MaterialButton(
                                        onPressed: () {
                                          addSomeFun();
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          "أضافة المنتج",
                                          style: GoogleFonts.rubik(
                                            color: black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.2, color: gray),
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: StreamBuilderData(collection: "infodata"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
