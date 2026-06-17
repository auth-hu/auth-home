import 'package:flutter/material.dart';
import 'package:loea/const/color.dart';
import 'package:loea/const/textEditController.dart';
import 'package:loea/pc/const/bools.dart';
import 'package:loea/pc/costom%20widget/addprodact.dart';

class Storage extends StatefulWidget {
  const Storage({super.key});

  @override
  State<Storage> createState() => _StorageState();
}

class _StorageState extends State<Storage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text("Storage")),

        floatingActionButton: Material(
          child: FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Material(
                    type: MaterialType.transparency,
                    child: Center(
                      child: Container(
                        height: 600,
                        width: 600,
                        decoration: BoxDecoration(
                          color: milk,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.all(12),
                              width: double.infinity,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(Icons.close),
                              ),
                            ),

                            Expanded(
                              child: SingleChildScrollView(
                                child: Form(
                                  key: addScreen,
                                  child: Column(
                                    children: [
                                      Addprodact(
                                        title: 'اسم المنتج',
                                        controller: nameController,
                                      ),
                                      SizedBox(height: 12,),
                                      Addprodact(
                                        title: 'العدد',
                                        controller: piecesController,
                                      ),
                                      SizedBox(height: 12,),
                                      Addprodact(
                                        title: 'سعر الشركة',
                                        controller: companyPriceController,
                                      ),
                                      SizedBox(height: 12,),
                                      Addprodact(
                                        title: 'شاشات متشابهة',
                                        controller: likeController,
                                      ),
                                      SizedBox(height: 12,),
                                    ],
                                  ),
                                ),
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
            backgroundColor: gray,
            hoverColor: green,
            child: Icon(Icons.add, color: milk),
          ),
        ),
      ),
    );
  }
}
