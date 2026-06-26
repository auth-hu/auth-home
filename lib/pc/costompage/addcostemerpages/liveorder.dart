import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/pc/const/collections.dart';
import 'package:loea/pc/costompage/addcostemerpages/getinvoice.dart';
import 'package:loea/pc/func/invoice.dart';
import 'package:loea/const/color.dart';
import 'package:loea/pc/const/texteditingcontroller.dart';
import 'package:loea/pc/costom%20widget/addwidgetforadd.dart';

class Liveorder extends StatefulWidget {
  const Liveorder({super.key});

  @override
  State<Liveorder> createState() => _LiveorderState();
}

class _LiveorderState extends State<Liveorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column()),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 32, horizontal: 256),
                decoration: BoxDecoration(
                  color: milk,
                  borderRadius: BorderRadius.circular(24),
                ),
                width: 200,
                height: 700,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FutureBuilder(
                              future: getCurrentInvoiceNumber(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return Container();
                                }

                                if (snapshot.hasError || !snapshot.hasData) {
                                  return Container();
                                }

                                return Text(
                                  "#${snapshot.data}: رقم الفاتورة",
                                  style: GoogleFonts.rubik(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: gray,
                                  ),
                                );
                              },
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(Icons.close, color: black),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(12),
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: [
                            Addwidgetforadd(
                              controller: nameController,
                              name: 'اسم العميل',
                            ),
                            Addwidgetforadd(
                              controller: priceController,
                              name: 'السعر',
                            ),
                            Addwidgetforadd(controller: producteController, name: 'العطل', onTap: (){
                              getAllProducts();
                            },
                            onChanged: (p0) {
                              List<Map<String, dynamic>> result = allProduct.where((p0){
                                return allProduct['name'].toString.contains(producteController.text);
                              });
                            },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        backgroundColor: green,
        child: Icon(Icons.add, color: milk),
      ),
    );
  }
}
