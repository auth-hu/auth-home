import 'package:cloud_firestore/cloud_firestore.dart';

Future<int> getCurrentInvoiceNumber() async{
  final doc = await FirebaseFirestore.instance.collection('orders').doc('invoice').get();

  return doc['currentNumber'];
}