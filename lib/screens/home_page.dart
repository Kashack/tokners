import 'package:flutter/material.dart';
import 'package:tokners/constant/globals.dart';
import 'package:tokners/screens/card_row.dart';
import 'package:tokners/screens/custom_appbar.dart';
import 'package:tokners/screens/custom_header.dart';
import 'package:tokners/screens/diffrent_side_design.dart';
import 'package:tokners/screens/qlist.dart';
import 'package:tokners/screens/statement_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F1320),
      body: ListView(
        children: [
          Container(
            width: 400,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Globals.backgroundHeader),
                    fit: BoxFit.fill,
                    alignment: Alignment.centerRight)),
            child: Column(
              children: [
                MyCustomAppBar(),
                CustomHeader(),
                CardRow(),
                DifferentSideDesign(),
                QList(),
                StatementSection(),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
