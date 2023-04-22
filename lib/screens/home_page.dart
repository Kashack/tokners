import 'package:flutter/material.dart';
import 'package:tokners/components/small_tag.dart';
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
      backgroundColor: const Color(0xFF0F1320),
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
                const MyCustomAppBar(),
                const CustomHeader(),
                const CardRow(),
                const DifferentSideDesign(),
                const QList(),
                const StatementSection(),
                Column(
                  children: [
                    SizedBox(
                        height: 300,
                        width: double.infinity,
                        child: Image.asset(
                          Globals.presaleDesign,
                          fit: BoxFit.fill,
                        )),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 300,
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SmallTags(
                                color: Color(0xFF22A75D),
                                tagNumber: 'Q1',
                              ),
                              const Text('Phase One')
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
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
