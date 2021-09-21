import 'package:flutter/material.dart';
import 'package:untitled/background/talk background.dart';
import 'package:untitled/while2/whileExplain2_3.dart';
import 'package:untitled/while2/whileExplain2_2.dart';
import 'package:untitled/while3/whileQ3.dart';
int i=0;
String a='https://i.imgur.com/d8Qt5BR.png';

class whileExplainT extends StatefulWidget {
  @override
  _whileExplainTState createState() => _whileExplainTState();
}
class _whileExplainTState extends State<whileExplainT> {
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
                      return whileExplain2_2();
                    }
                ),
              );
            }
            if(i==2) {
              a = 'https://i.imgur.com/9MYynoG.png';
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return whileExplain2_3();
                    }
                ),
              );
            }
            if(i==3) {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return whileQ3();
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