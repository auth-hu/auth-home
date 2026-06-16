import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:loea/android/pages/search/listsearch.dart';
import 'package:loea/const/textEditController.dart';

Future<void> addSomeFun() async {
  await FirebaseFirestore.instance.collection('screen').add({
    'name' : nameController.text,
    'pieces' : piecesController.text,
    'CompanyPrice' : companyPriceController.text,
    'likeScreen' : likeController.text,
    'createSearchKewwords' : [
      ...createSearchKewwords(nameController.text),
      ...createSearchKewwords(likeController.text),
    ]
  });
  nameController.clear();
  piecesController.clear();
  companyPriceController.clear();
  ourPriceController.clear();
  likeController.clear();

}


Future<void> searchBar() async {
  FirebaseFirestore.instance.collection('screen').where('createSearchKewwords', arrayContains: searchController.text.toLowerCase()).snapshots();
}