import 'package:flutter/material.dart';
import 'package:tokners/constant/globals.dart';

class BottomArc extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.arcToPoint(
      Offset(size.width - 100, size.height - 100),
      radius: Radius.circular(100),
      clockwise: false,
    );

    path.lineTo(0, size.height - 100);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) => false;
}

class DifferentSideDesign extends StatelessWidget {
  const DifferentSideDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Container(
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Globals.leftDesign), fit: BoxFit.fill),
              borderRadius: BorderRadius.only(topRight: Radius.circular(200))),
        )),
        Expanded(
            child: ClipPath(
          clipper: BottomArc(),
          child: Container(
            height: 500,
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(200),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What makes us different?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 10,),
                Text(
                  'We would only launch tokens with the express permission of the creators.',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                ),
                Text(
                    'There are several thousand celebrities and creators on twitter, tiktok, Instagram and YouTube with followings in the millions who we would be actively engaging before we go viral.\n We would get them on ourplatform and they would see the opportunity to create a fan driven digital economy where their digital content can be traded as NFTs and their most loyal fans can have the monetary value of their creator\'s currency increase significantly as they promote their digital currency across their channels while our native token holders benefit from the Weentar popularity.')
              ],
            ),
          ),
        )),
      ],
    );
  }
}
