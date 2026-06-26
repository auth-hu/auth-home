import 'package:cloud_firestore/cloud_firestore.dart';

class Invoice {
  static Future<int> generateInvoiceNumber() async{
    final docRef = FirebaseFirestore.instance.collection('orders').doc('invoice');

    return FirebaseFirestore.instance.runTransaction<int>((transaction) async {
      final snapshot = await transaction.get(docRef);

      int currentNumber = snapshot['currentNumber'];

      transaction.update(docRef, {
        'currentNumber': currentNumber + 1,
      });

      return currentNumber;
    });
  }
}