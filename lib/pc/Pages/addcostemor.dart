import 'package:flutter/material.dart';
import 'package:loea/const/color.dart';
import 'package:loea/pc/const/textadd.dart';
import 'package:loea/pc/const/var.dart';
import 'package:loea/pc/costompage/addcostemerpages/completedorder.dart';
import 'package:loea/pc/costompage/addcostemerpages/liveorder.dart';

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
          Container(
            margin: EdgeInsets.symmetric(vertical: 16, horizontal: 265),
            width: double.infinity,
            child: SegmentedButton<String>(
              style: ButtonStyle(
                animationDuration: Duration(milliseconds: 800),
                backgroundColor: WidgetStatePropertyAll(milk),
              ),
              segments: [
                ButtonSegment(
                  value: 'الطلبات الحالية',
                  label: Textadd(text: 'الطلبات الحالية'),
                ),
                ButtonSegment(
                  value: 'الطلبات المكتملة',
                  label: Textadd(text: 'الطلبات المكتلمة'),
                ),
              ],
              selected: {selected},
              onSelectionChanged: (Set newSelection) {
                setState(() {
                  selected = newSelection.first;
                });

                if(selected == 'الطلبات الحالية'){
                  numbers = true;
                }else if (selected == 'الطلبات المكتملة'){
                  numbers = false;
                }
              },
            ),
          ),

          Expanded(child: numbers ? Liveorder() : Completedorder()),
        ],
      ),
    );
  }
}
