import 'package:flutter/material.dart';
import 'package:untitled/background/talk background.dart';
import 'package:untitled/nest2/nestExplain2_2.dart';
import 'package:untitled/nest/nestToEclipse.dart';
String c='https://i.imgur.com/d8Qt5BR.png';
int i=0;

class nestExplainT2 extends StatefulWidget {
  @override
  _nestExplainT2State createState() => _nestExplainT2State();
}
class _nestExplainT2State extends State<nestExplainT2> {

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
            if(i==1) {
              c = 'https://i.imgur.com/9MYynoG.png';
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return nestExplain2_2();
                    }
                ),
              );
            }
            if(i==2) {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return nestToEclipse();
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