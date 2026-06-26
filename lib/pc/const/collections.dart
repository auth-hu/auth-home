import 'package:cloud_firestore/cloud_firestore.dart';

List<Map<String, dynamic>> allProduct = [];


Future<void> getAllProducts() async {
  final screen = await FirebaseFirestore.instance.collection('screen').get();
  final battries = await FirebaseFirestore.instance.collection('screen').get();
  final flatCharing = await FirebaseFirestore.instance.collection('screen').get();
  final charging = await FirebaseFirestore.instance.collection('screen').get();
  final co = await FirebaseFirestore.instance.collection('screen').get();

  for(var doc in screen.docs){
    allProduct.add(doc.data());
  }

   for(var doc in battries.docs){
    allProduct.add(doc.data());
  }

   for(var doc in flatCharing.docs){
    allProduct.add(doc.data());
  }

   for(var doc in charging.docs){
    allProduct.add(doc.data());
  }

   for(var doc in co.docs){
    allProduct.add(doc.data());
  }

}