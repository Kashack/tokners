import 'package:flutter/material.dart';
import 'package:tokners/constant/globals.dart';

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(Globals.logoImage))),
          ),
          Expanded(
            child: LayoutBuilder(
                builder: (context, constraint) {
              if (constraint.maxWidth < 600) {
                return Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ));
              } else {
                return Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Our team',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child:
                          Text('Tokens', style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Connect wallet',
                          style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('lightpaper',
                          style: TextStyle(color: Colors.white)),
                    ),
                    Expanded(child: SizedBox()),
                    TextButton(
                      onPressed: () {},
                      child: Text('Sign In',
                          style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Color(0xFF22A75D),
                            width: 1,
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 25),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Text('Sign Up',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                );
              }
            }),
          )
        ],
      ),
    );
  }
}
