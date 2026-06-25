import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';
import 'package:loea/const/textEditController.dart';
import 'package:loea/pc/costom%20widget/addprodact.dart';
import 'package:loea/pc/func/editinfirebase.dart';

Future editscreen(BuildContext context, String namePar, String piecespar, String companypar, String likepar) {
  return showDialog(
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
                            doc: namePar,
                          ),
                          SizedBox(height: 12),
                          Addprodact(
                            title: 'العدد',
                            controller: piecesController,
                            doc: piecespar,
                          ),
                          SizedBox(height: 12),
                          Addprodact(
                            title: 'سعر الشركة',
                            controller: companyPriceController,
                            doc: companypar,
                          ),
                          SizedBox(height: 12),
                          Addprodact(
                            title: 'شاشات متشابهة',
                            controller: likeController,
                            doc: likepar,
                          ),
                          SizedBox(height: 12),

                          Container(
                            decoration: BoxDecoration(
                              color: green,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            margin: EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 98,
                            ),
                            width: double.infinity,
                            child: MaterialButton(
                              padding: EdgeInsets.symmetric(vertical: 18),
                              onPressed: () {
                                editinfirestore();
                              },
                              child: Text(
                                "أضف المنتج",
                                style: GoogleFonts.rubik(
                                  color: milk,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
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
}
