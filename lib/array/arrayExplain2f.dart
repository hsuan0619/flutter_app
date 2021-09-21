import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/array/arrayExplainT.dart';

class arrayExplain2f extends StatefulWidget {
  @override
  _arrayExplain2fState createState() => _arrayExplain2fState();
}
class _arrayExplain2fState extends State<arrayExplain2f> {
  String a='https://i.imgur.com/ol5ZVkj.png';
  double b=0.08;
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
                a='https://i.imgur.com/nePBfmH.png';
                b=0.08;
              });
            }else if(i==2)
            {
              setState((){
                a='https://i.imgur.com/NSoEKqF.png';
              });
            }else
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return arrayExplainT();
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