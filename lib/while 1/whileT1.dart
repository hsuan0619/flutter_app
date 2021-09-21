import 'package:flutter/material.dart';
import 'package:untitled/background/talk background.dart';
import 'package:untitled/while 1/whileExplain1_3.dart';
import 'package:untitled/while 1/whileExplain1_2.dart';
import 'package:untitled/while2/whileQ2.dart';
int i=0;
String a='https://i.imgur.com/d8Qt5BR.png';

class whileT1 extends StatefulWidget {
  @override
  _whileT1State createState() => _whileT1State();
}
class _whileT1State extends State<whileT1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          talk(),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.23,
            bottom : MediaQuery.of(context).size.height * 0.08,
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
            if(i==1){
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return whileExplain1_2();
                    }
                ),
              );
            }
            if(i==2) {
              a = 'https://i.imgur.com/9MYynoG.png';
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return whileExplain1_3();
                    }
                ),
              );
            }
            if(i==3) {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return whileQ2();
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