import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/for1/forExplainT1.dart';

class forExplain1_2f extends StatefulWidget {
  @override
  _forExplain1_2fState createState() => _forExplain1_2fState();
}
class _forExplain1_2fState extends State<forExplain1_2f> {
  String a='https://i.imgur.com/ZKENQAd.png';
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
                a='https://i.imgur.com/EE65NlX.png';
                b=0.09;
              });
            }else
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) {
                    return forExplainT1();
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