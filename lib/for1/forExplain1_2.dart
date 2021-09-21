import 'package:flutter/material.dart';
import 'package:untitled/background/question background.dart';
import 'package:untitled/for1/forExplainT1.dart';
import 'package:untitled/for1/forExplain1_2f.dart';

class forExplain1_2 extends StatefulWidget {
  @override
  _forExplain1_2State createState() => _forExplain1_2State();
}
class _forExplain1_2State extends State<forExplain1_2> {

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
                'https://i.imgur.com/ZwIv5QE.png',
                width: MediaQuery.of(context).size.width * 0.78,
              ),
            ),
            //code
            Positioned(
              left: MediaQuery.of(context).size.width * 0.43,
              bottom : MediaQuery.of(context).size.height * 0.2,
              child:
              Image.network(
                'https://i.imgur.com/Cp2RVYq.png',
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
                          return forExplain1_2f();
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
                          return forExplainT1();
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