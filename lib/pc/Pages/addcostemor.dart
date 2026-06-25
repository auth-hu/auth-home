import 'package:flutter/material.dart';
import 'package:loea/pc/costompage/listaddcost.dart';

class Addcostemor extends StatefulWidget {
  const Addcostemor({super.key});

  @override
  State<Addcostemor> createState() => _AddcostemorState();
}

class _AddcostemorState extends State<Addcostemor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Listaddcost(),
        ],
      )
    );
  }
}