import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/nest1/nestExplainT1.dart';

class nestExplain1_1f extends StatefulWidget {
  @override
  _nestExplain1_1fState createState() => _nestExplain1_1fState();
}
class _nestExplain1_1fState extends State<nestExplain1_1f> {
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
                a='https://i.imgur.com/wI9Lgad.png';
              });
            }else
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) {
                    return nestExplainT1();
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