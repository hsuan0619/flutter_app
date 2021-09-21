import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/while2/whileExplainT.dart';

class whileExplain2_1f extends StatefulWidget {
  @override
  _whileExplain2_1fState createState() => _whileExplain2_1fState();
}
class _whileExplain2_1fState extends State<whileExplain2_1f> {
  String a='https://i.imgur.com/sP7HMu2.png';
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
                a='https://i.imgur.com/vj9LdwR.png';
                b=0.09;
              });
            }else
              Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) {
                    return whileExplainT();
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