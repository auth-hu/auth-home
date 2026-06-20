import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loea/const/color.dart';
import 'package:loea/pc/costompage/streambuilderforpc.dart';

class Screenpage extends StatefulWidget {
  const Screenpage({super.key});

  @override
  State<Screenpage> createState() => _ScreenpageState();
}

class _ScreenpageState extends State<Screenpage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /* Bar Search Section Start */
        Container(
          margin: EdgeInsets.all(12),
          width: double.infinity,
          height: 50,
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "البحث",
                    style: GoogleFonts.rubik(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: gray,
                      decoration: TextDecoration.none
                    ),
                  ),
                ),
              ),
              Expanded(flex: 5, child: IconButton(onPressed: (){}, icon: Icon(Icons.search, color: gray, size: 32,),)),
            ],
          ),
        ),
        /* Bar Search Section End */

        /* List Veiw Section Start */
        Expanded(
          child: Container(
            margin: EdgeInsets.all(8),
            child: Streambuilderforpc(collection: 'screen'),
          )
          )
        /* List Veiw Section End */
      ],
    );
  }
}