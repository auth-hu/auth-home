import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:loea/const/textEditController.dart';
import 'package:loea/pc/const/var.dart';

Future editinfirestore() async{
  await FirebaseFirestore.instance
    .collection('users')
    .doc(docId.toString())
    .update({
      'CompanyPrice' : companyPriceController.text,
      'likeScreen': likeController.text,
      'name': piecesController.text,
      'pieces': nameController.text
    });
}