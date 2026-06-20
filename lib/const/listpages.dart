// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:loea/android/addcostomer.dart';
import 'package:loea/android/pages/battryinfo.dart';
import 'package:loea/android/pages/charingdata.dart';
import 'package:loea/android/pages/flatchargingdata.dart';
import 'package:loea/android/pages/infodata.dart';
import 'package:loea/android/pages/screendata.dart';
import 'package:loea/android/pages/storage.dart';
import 'package:loea/const/color.dart';
import 'package:loea/pc/costompage/screenstorage.dart';

List Pages = [
  Center(child: Text("الرئيسية"),),
  Storage(),
  Addcostomer(),
  Center(child: Text("الطلبات"),),
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

List dataPage = [
  Screendata(),
  Flatcharingdat(),
  Infodata(),
  Battrydata(),
  Chargingdata()
];

List dataPagePC = [
  Screenstorage()
];

List imagedata = [
  Icon(Icons.screenshot_rounded),
  Icon(Icons.charging_station),
  Icon(Icons.open_in_full_sharp),
  Icon(Icons.battery_0_bar),
  Icon(Icons.charging_station_rounded),
];

List imagedata2 = [
  Icon(Icons.screenshot_rounded, size: 84, color: milk,),
  Icon(Icons.charging_station, size: 84, color: milk,),
  Icon(Icons.open_in_full_sharp, size: 84, color: milk,),
  Icon(Icons.battery_0_bar, size: 84, color: milk,),
  Icon(Icons.charging_station_rounded, size: 84, color: milk,),
];

List pcColorGird = [cyan, cyan2, gray, darkred, cyan , cyan2];