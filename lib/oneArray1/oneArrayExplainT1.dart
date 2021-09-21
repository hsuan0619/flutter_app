import 'package:flutter/material.dart';
import 'package:untitled/background/talk background.dart';
import 'package:untitled/oneArray1/oneArrayExplain1_3.dart';
import 'package:untitled/oneArray1/oneArrayExplain1_2.dart';
import 'package:untitled/oneArray2/oneArray2.dart';
String c='https://i.imgur.com/d8Qt5BR.png';
int i=0;

class oneArrayExplainT1 extends StatefulWidget {
  @override
  _oneArrayExplainT1State createState() => _oneArrayExplainT1State();
}
class _oneArrayExplainT1State extends State<oneArrayExplainT1> {

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
              c,
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
                      return oneArrayExplain1_2();
                    }
                ),
              );
            }
            if(i==2) {
              c = 'https://i.imgur.com/9MYynoG.png';
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return oneArrayExplain1_3();
                    }
                ),
              );
            }
            if(i==3) {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return oneArray2();
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