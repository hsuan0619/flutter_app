import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/oneArray1/oneArrayExplainT1.dart';

class oneArrayExplain1_3f extends StatefulWidget {
  @override
  _oneArrayExplain1_3fState createState() => _oneArrayExplain1_3fState();
}
class _oneArrayExplain1_3fState extends State<oneArrayExplain1_3f> {
  String a='https://i.imgur.com/2y4uzby.png';
  double b=0.13;
  int i=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          talk(),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.23,
            bottom : MediaQuery.of(context).size.height * b,
            child:
            Image.network(
              a,
              width: MediaQuery.of(context).size.width * 0.65,
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.05,
        child:
        FloatingActionButton(
          onPressed: () {
            i++;
            if(i==1)
            {
              setState((){
                a='https://i.imgur.com/I6SNe2o.png';
                b=0.08;
              });
            }else
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return oneArrayExplainT1();
                    }
                ),
              );
          },
          child:
          Image.network('https://i.imgur.com/8sotS2s.png'),
        ),
      ),
    );

  }
}