import 'package:flutter/material.dart';
import 'package:untitled/background/question%20background.dart';
import 'package:untitled/doWhile2/doWhileExplainT2.dart';
import 'package:untitled/doWhile2/doWhileExplain2_2f.dart';


class doWhileExplain2_2 extends StatefulWidget {
  @override
  _doWhileExplain2_2State createState() => _doWhileExplain2_2State();
}
class _doWhileExplain2_2State extends State<doWhileExplain2_2> {

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
              bottom : MediaQuery.of(context).size.height * 0.19,
              child:
              Image.network(
                'https://i.imgur.com/ZhPwY6Q.png',
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
                          return doWhileExplain2_2f();
                        }
                    ),
                  );
                },
                icon: Image.network('https://i.imgur.com/tOzQ1xu.png'),
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
                          return doWhileExplainT2();
                        }
                    ),
                  );
                },
                icon: Image.network('https://i.imgur.com/6YkS86h.png',),
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
                          return doWhileExplain2_2f();
                        }
                    ),
                  );
                },
                icon: Image.network('https://i.imgur.com/8VJLEGc.png',),
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
                          return doWhileExplain2_2f();
                        }
                    ),
                  );
                },
                icon: Image.network('https://i.imgur.com/yYLXeKu.png'),
                iconSize: MediaQuery.of(context).size.width * 0.13,
              ),
            ),
          ],
        )
    );
  }
}