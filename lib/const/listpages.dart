// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:loea/android/pages/screendata.dart';
import 'package:loea/android/pages/storage.dart';

List Pages = [
  Center(child: Text("الرئيسية"),),
  Storage(),
  Center(child: Text("الطلبات"),),
  Screendata(),
  Center(child: Text("النواقص"),),
];

int currentPage = 0;


List data = [
  'شاشات',
  'فلات شحن',
  'ناقل معلومات',
  'بطاريات',
  'جكات شحن',
];

List dataPage = [];

List imagedata = [
  Icon(Icons.screenshot_rounded),
  Icon(Icons.charging_station),
  Icon(Icons.open_in_full_sharp),
  Icon(Icons.battery_0_bar),
  Icon(Icons.charging_station_rounded),
];