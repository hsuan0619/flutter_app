import 'package:flutter/material.dart';
import 'package:untitled/background/question background.dart';
import 'package:untitled/while2/whileExplainT.dart';
import 'package:untitled/while2/whileExplain2_1f.dart';

class whileExplain2_1 extends StatefulWidget {
  @override
  _whileExplain2_1State createState() => _whileExplain2_1State();
}
class _whileExplain2_1State extends State<whileExplain2_1> {

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
                'https://i.imgur.com/DsmiFCr.png',
                width: MediaQuery.of(context).size.width * 0.78,
              ),
            ),
            //code
            Positioned(
              left: MediaQuery.of(context).size.width * 0.43,
              bottom : MediaQuery.of(context).size.height * 0.18,
              child:
              Image.network(
                'https://i.imgur.com/ainuxo0.png',
                width: MediaQuery.of(context).size.width * 0.45,
              ),
            ),

            //選項 true
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.25,
              left: MediaQuery.of(context).size.width * 0.13,
              child:
              IconButton(
                onPressed:(){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) {
                          return whileExplain2_1f();
                        }
                    ),
                  );
                },
                icon: Image.network('https://i.imgur.com/FnpVNvf.png'),
                iconSize: MediaQuery.of(context).size.width * 0.13,
              ),
            ),
            //選項 false
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.25,
              left: MediaQuery.of(context).size.width * 0.28,
              child:
              IconButton(
                onPressed:(){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) {
                          return whileExplainT();
                        }
                    ),
                  );
                },
                icon: Image.network('https://i.imgur.com/VwqwDix.png',),
                iconSize: MediaQuery.of(context).size.width * 0.13,
              ),
            ),
          ],
        )
    );

  }
}