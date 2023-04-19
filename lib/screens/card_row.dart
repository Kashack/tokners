import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tokners/constant/globals.dart';

class CardRow extends StatelessWidget {
  const CardRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(20.0),
              height: 250,
              decoration: BoxDecoration(
                  color: Color(0xFF171B29),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Image.asset(
                      Globals.creatorsIcon,
                      height: 40,
                      width: 40,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF22A75D).withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 25,
                              offset: Offset(0,15)
                          ),
                        ]
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                        children: [
                          TextSpan(text: 'For '),
                          TextSpan(
                            text: 'Creators',
                            style: TextStyle(
                              color: Color(0xFF22A75D),
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ]),
                  ),
                  Container(
                    child: Text(
                      'Creators can gain independence through a decentralised digital currency system that is dependent on growing and engaging with the community and also their star power. They own 10-15% of the total value of the tokens minted.',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Learn More ',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF22A75D),
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xFF22A75D),
                          size: 14,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 150.0),
              padding: EdgeInsets.all(20.0),
              height: 250,
              width: 500,
              decoration: BoxDecoration(
                  color: Color(0xFF171B29),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: SvgPicture.asset(Globals.holderIcon,fit: BoxFit.cover,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF2278D4).withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 25,
                          offset: Offset(0,15)
                        ),
                      ]
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                        children: [
                          TextSpan(text: 'For '),
                          TextSpan(
                            text: 'Holders',
                            style: TextStyle(
                              color: Color(0xFF2278D4),
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ]),
                  ),
                  Container(
                    child: Text(
                      'Holding social tokens allows the individual to gain access to benefits including unreleased content, private communities, direct access to celebrity, early- access to tickets and more as well as the ability to trade with other communities in order to gain access to more creator content with early token buyers being the biggest winners as the value of the token increases with more buyers.',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Learn More ',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF2278D4),
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xFF2278D4),
                          size: 14,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
