import 'package:flutter/material.dart';
import 'package:tokners/constant/globals.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraint) {
        if(constraint.maxWidth < 600){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'At Tokners we are',
                    style: TextStyle(
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: <Color>[
                              Color(0xFF2B3087),
                              Color(0xFF00B4EC)
                              //add more color here.
                            ],
                          ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    width: 450,
                    child: Text(
                      'Reimagining social media through the power of the blockchain.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    width: 450,
                    child: Text(
                      'We are creating social media 3.0 with influencers, celebrities and creators being able to launch their own digital currency by simply creating a profile with media content posted as Non fungible Tokens that can be owned and traded on the Tknrs network',
                      style: TextStyle(color: Color(0xFFDDE2FF), fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: TextButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Color(0xFF22A75D),
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 25,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadowColor: Colors.white,
                        elevation: 8,
                      ),
                      child:
                      Text('Learn More', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
              Container(
                height: 200,

                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Globals.phoneImage),
                      fit: BoxFit.cover
                  ),
                ),
              )
            ],
          );
        }else{
          return Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'At Tokners we are',
                        style: TextStyle(
                            foreground: Paint()
                              ..shader = LinearGradient(
                                colors: <Color>[
                                  Color(0xFF2B3087),
                                  Color(0xFF00B4EC)
                                  //add more color here.
                                ],
                              ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        width: 450,
                        child: Text(
                          'Reimagining social media through the power of the blockchain.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        width: 450,
                        child: Text(
                          'We are creating social media 3.0 with influencers, celebrities and creators being able to launch their own digital currency by simply creating a profile with media content posted as Non fungible Tokens that can be owned and traded on the Tknrs network',
                          style: TextStyle(color: Color(0xFFDDE2FF), fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: TextButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Color(0xFF22A75D),
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 25,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            shadowColor: Colors.white,
                            elevation: 8,

                          ),
                          child:
                          Text('Learn More', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      height: 650,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Globals.phoneImage),
                            fit: BoxFit.cover
                        ),
                      ),
                    ))
              ],
            ),
          );
        }
      }
    );
  }
}
