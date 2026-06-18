import 'package:cloud_firestore/cloud_firestore.dart';

List<Map<String, dynamic>> screen = [];

Future<void> getScreen() async {
  final snapshot = await FirebaseFirestore.instance.collection('screen').get();
  
  screen = snapshot.docs.map((doc){
    return doc.data();
  }).toList();
}

