import 'package:loea/android/pages/storage.dart';
import 'package:loea/pc/Pages/addcostemor.dart';
import 'package:loea/pc/Pages/ansalze.dart';
import 'package:loea/pc/Pages/home.dart';
import 'package:loea/pc/Pages/mylist.dart';

const List pages = [
  Home(),
  Storage(),
  Addcostemor(),
  Ansalze(),
  Mylist()
];

int currectPage = 0;