import 'package:flutter/material.dart';
import 'package:loea/const/color.dart';
import 'package:loea/pc/const/list.dart';

class Listaddcost extends StatelessWidget {
  const Listaddcost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 24),
      width: double.infinity,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(0),
            width: 500,
            height: 75,
            child: ListView.builder(
              itemCount: addcostomermune.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      color: milk.withValues(alpha: .9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      addcostomermune[index]
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}