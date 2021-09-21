import 'package:flutter/material.dart';
import 'package:untitled/background/question%20background.dart';
import 'package:untitled/break2/breakExplain2_2f.dart';
import 'package:untitled/break2/breakExplainT2.dart';


class breakExplain2_2 extends StatefulWidget {
  @override
  _breakExplain2_2State createState() => _breakExplain2_2State();
}
class _breakExplain2_2State extends State<breakExplain2_2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            question(),
            //code框
            Positioned(
              left: MediaQuery.of(context).size.width * 0.43,
              bottom : MediaQuery.of(context).size.height * 0.18,
              child:
              Image.network(
                'https://i.imgur.com/ZUKp9MT.png',
                width: MediaQuery.of(context).size.width * 0.44,
              ),
            ),
            //題目
            Positioned(
              left: MediaQuery.of(context).size.width * 0.1,
              bottom : MediaQuery.of(context).size.height * 0.62,
              child:
              Image.network(
                'https://i.imgur.com/33kST36.png',
                width: MediaQuery.of(context).size.width * 0.78,
              ),
            ),
            //code
            Positioned(
              left: MediaQuery.of(context).size.width * 0.43,
              bottom : MediaQuery.of(context).size.height * 0.17,
              child:
              Image.network(
                'https://i.imgur.com/84NXs71.png',
                width: MediaQuery.of(context).size.width * 0.45,
              ),
            ),

            //選項 1
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.38,
              left: MediaQuery.of(context).size.width * 0.13,
              child:
              IconButton(
                onPressed:(){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) {
                          return breakExplainT2();
                        }
                    ),
                  );
                },
                icon: Image.network('https://i.imgur.com/wuDBSyK.png'),
                iconSize: MediaQuery.of(context).size.width * 0.13,
              ),
            ),
            //選項 2
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.38,
              left: MediaQuery.of(context).size.width * 0.27,
              child:
              IconButton(
                onPressed:(){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) {
                          return breakExplain2_2f();
                        }
                    ),
                  );
                },
                icon: Image.network('https://i.imgur.com/tOtyl4Q.png',),
                iconSize: MediaQuery.of(context).size.width * 0.13,
              ),
            ),
            //選項 3
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.13,
              left: MediaQuery.of(context).size.width * 0.13,
              child:
              IconButton(
                onPressed:(){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) {
                          return breakExplain2_2f();
                        }
                    ),
                  );
                },
                icon: Image.network('https://i.imgur.com/fHpRxXy.png',),
                iconSize: MediaQuery.of(context).size.width * 0.13,
              ),
            ),
            //選項 4
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.13,
              left: MediaQuery.of(context).size.width * 0.27,
              child:
              IconButton(
                onPressed:(){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) {
                          return breakExplain2_2f();
                        }
                    ),
                  );
                },
                icon: Image.network('https://i.imgur.com/OaWxc4u.png'),
                iconSize: MediaQuery.of(context).size.width * 0.13,
              ),
            ),
          ],
        )
    );
  }
}