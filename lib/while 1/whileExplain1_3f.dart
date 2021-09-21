import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/while 1/whileT1.dart';

class whileExplain1_3f extends StatefulWidget {
  @override
  _whileExplain1_3fState createState() => _whileExplain1_3fState();
}
class _whileExplain1_3fState extends State<whileExplain1_3f> {
  String a='https://i.imgur.com/yirNxWN.png';
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
                a='https://i.imgur.com/bk7B2aS.png';
                b=0.09;
              });
            }else if(i==2) {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return whileT1();
                    }
                ),
              );
            }
          },
          child:
          Image.network('https://i.imgur.com/8sotS2s.png'),
        ),
      ),
    );

  }
}