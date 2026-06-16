

// List<String> createSearchKewwords(String nametolower) {
//   nametolower = nameController.text;

//   List<String> nameKeyword = [];

//   for (int i = 0; i < nametolower.length; i++){
//     for (int j = i + 1; j <= nametolower.length; j++) {
//       nameKeyword.add(nametolower.substring(i, j));
//     }
//   }

//   return nameKeyword.toSet().toList();
// }

List<String> createSearchKewwords(String text) {
  text = text.toLowerCase();
  List<String> keywords = [];

  String temp = '';

  for (int i = 0; i < text.length; i++) {
    temp += text[i];
    keywords.add(temp.toLowerCase());
  }

  return keywords;
}