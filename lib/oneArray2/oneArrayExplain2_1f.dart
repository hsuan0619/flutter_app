import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/oneArray2/oneArrayExplainT2.dart';

class oneArrayExplain2_1f extends StatefulWidget {
  @override
  _oneArrayExplain2_1fState createState() => _oneArrayExplain2_1fState();
}
class _oneArrayExplain2_1fState extends State<oneArrayExplain2_1f> {
  String a='https://i.imgur.com/vkMBMhm.png';
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
                a='https://i.imgur.com/pOzlvDS.png';
              });
            }else
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return oneArrayExplainT2();
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