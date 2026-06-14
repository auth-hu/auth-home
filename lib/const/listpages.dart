// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:loea/android/pages/storage.dart';

List Pages = [
  Center(child: Text("الرئيسية"),),
  Storage(),
  Center(child: Text("الطلبات"),),
  Center(child: Text("الأحصائيات"),),
  Center(child: Text("النواقص"),),
];

int currentPage = 0;
