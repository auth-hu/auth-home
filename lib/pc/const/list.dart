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

List names = [
  'اسم المنتج',
  'العدد',
  'السعر',
  'المتشابه',
];

int currectPage = 0;

List addcostomermune = [
  'الطلبات الحالية',
  'الطلبات المكتملة',
  'الطلبات المرفوضة',
];