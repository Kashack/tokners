import 'package:flutter/material.dart';

class SmallTags extends StatelessWidget {
  final Color color;
  final String tagNumber;
  final List<String> tagTextList;

  const SmallTags(
      {Key? key,
      required this.color,
      required this.tagNumber,
      required this.tagTextList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: color.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 25,
                        offset: Offset(0, 15)),
                  ]),
              child: Text(
                tagNumber,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  margin: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Text(
                  '2021',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: List.generate(tagTextList.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('0${index + 1}', style: TextStyle(color: color)),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      tagTextList[index],
                      style: TextStyle(color: Colors.white),
                      softWrap: true,
                    ),
                  )
                ],
              ),
            );
          }),
        )
      ],
    );
  }
}
