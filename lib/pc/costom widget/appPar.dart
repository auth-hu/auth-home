// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/bool.dart';
import 'package:loea/const/color.dart';
import 'package:loea/pc/costom%20widget/munelist.dart';

class Apppar extends StatefulWidget {
  const Apppar({super.key});

  @override
  State<Apppar> createState() => _AppparState();
}

class _AppparState extends State<Apppar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          color: gray,
          padding: EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /* List Mune Section Start */
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Munelist(
                      onPressed: () {
                        setState(() {
                          needs = !needs;
                          anyz = false;
                          orders = false;
                          storge = false;
                          home = false;
                        });
                      },
                      icon: Icons.note_add,
                      text: "قائمة الطلبات",
                      active: needs,
                    ),
                    Munelist(
                      onPressed: () {
                        setState(() {
                          needs = false;
                          anyz = !anyz;
                          orders = false;
                          storge = false;
                          home = false;
                        });
                      },
                      icon: Icons.analytics,
                      text: "الأحصائيات",
                      active: anyz,
                    ),
                    Munelist(
                      onPressed: () {
                        setState(() {
                          needs = false;
                          anyz = false;
                          orders = !orders;
                          storge = false;
                          home = false;
                        });
                      },
                      icon: Icons.store_mall_directory_sharp,
                      text: "الطلبات",
                      active: orders,
                    ),
                    Munelist(
                      onPressed: () {
                        setState(() {
                          needs = false;
                          anyz = false;
                          orders = false;
                          storge = !storge;
                          home = false;
                        });
                      },
                      icon: Icons.storage,
                      text: "المخزن",
                      active: storge,
                    ),
                    Munelist(
                      onPressed: () {
                        setState(() {
                          needs = false;
                          anyz = false;
                          orders = false;
                          storge = false;
                          home = !home;
                        });
                      },
                      icon: Icons.home,
                      text: "الرئيسية",
                      active: home,
                    ),
                  ],
                ),
              ),
              /* List Mune Section End */

              SizedBox(width: 400,),

              /* Start Logo Section */
              Container(
                margin: EdgeInsets.zero,
                child: Text(
                  "مكتب النور",
                  style: GoogleFonts.rubik(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: milk,
                  ),
                ),
              ),

              /* End Logo Section */
            ],
          ),
        );
      },
    );
  }
}
