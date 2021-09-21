import 'package:flutter/material.dart';
import 'package:untitled/background/talk background.dart';
import 'package:untitled/array/arrayExplain2.dart';
import 'package:untitled/arrayAll/arrayAllToEclipse.dart';
String c='https://i.imgur.com/d8Qt5BR.png';
int i=0;

class arrayExplainT extends StatefulWidget {
  @override
  _arrayExplainTState createState() => _arrayExplainTState();
}
class _arrayExplainTState extends State<arrayExplainT> {

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
              c = 'https://i.imgur.com/9MYynoG.png';
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return arrayExplain2();
                    }
                ),
              );
            }
            if(i==2) {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return arrayAllToEclipse();
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