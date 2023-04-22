import 'package:flutter/material.dart';
import 'package:tokners/constant/globals.dart';

class StatementSection extends StatelessWidget {
  const StatementSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Globals.logo,
                        height: 30,
                        width: 30,
                      ),
                      Text(
                        ' Tokner is coming',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text:
                            'Cryptocurrency adoption is at less than 1% of the global world population with some countries and entities actively fighting against its mass adoption and the smartest developers and nerds holding the fort.\n\n',
                        style: TextStyle(
                          color: Color(0xFF9FA1A6),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            'Bitcoin was the first, and it has since grown to thousands of tokens launched all aiming to fix one problem or the other with some quite simply FOMOing the moment. Our goal is to bring mass adoption to the cryptocurrency space by dumbing it down. How far down? So down that even a celebrity can explain it in simple words to their followers and have them download an app, buy into the social currency of their favourite person and watch their investment as is with other crypto currency project.\n We are trying to do to this space what investment apps did for the "nonexistent retail investors". We are gamefying digital currency, bringing in popular faces instead of hard to understand projects to make it the norm and inadvertently being the "gateway drug" for a lot of people to finally give this space a real look. ',
                        style: TextStyle(
                          color: Color(0xFF9FA1A6),
                        ),
                      ),
                      TextSpan(
                        text:
                            '\n\nA new digital economy is coming. People would be just as powerful as countries and creators would be paid beyond the peanuts that conventional social media platforms can offer.',
                        style: TextStyle(
                            color: Color(0xFF9FA1A6),
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            '\n\nThere would be new markets and advertisers with little to offer would not find home there. Like Kanye said,\n',
                        style: TextStyle(
                          color: Color(0xFF9FA1A6),
                        ),
                      ),
                      TextSpan(
                        text:
                            '\n"Personalities would become the new currency, and services would be built on top of them"\n',
                        style: TextStyle(
                            color: Color(0xFF9FA1A6),
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      TextSpan(
                        text:
                            '\nWell, Kanye didn\'t exactly say that, but it sounds like something we hope he would say.\n\n Currency is digital, it has been that way for a while now, but this time there would be no dead presidents on the money, there would people like you on the money, and you would own it because it would make the most sense in the world.',
                        style: TextStyle(
                          color: Color(0xFF9FA1A6),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Read more',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xFF22A75D),
                          width: 1,
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF171B29),
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    // height: 300,
                    margin: EdgeInsets.only(left: 200),
                  ),
                  Positioned.fill(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      Globals.holdingPhoneImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
