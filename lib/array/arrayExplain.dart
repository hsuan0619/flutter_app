import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/array/arrayExplain1.dart';

class arrayExplain extends StatefulWidget {
  @override
  _arrayExplainState createState() => _arrayExplainState();
}
class _arrayExplainState extends State<arrayExplain> {
  String a='https://i.imgur.com/4HPkuCi.png';
  int i=0;
  double b=0.08;

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
              width: MediaQuery.of(context).size.width * 0.68,
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.05,
        child:
        FloatingActionButton(
          onPressed: () {
            if(i==0) {
              setState(() {
                a = 'https://i.imgur.com/JzqRNgl.png';
                b= 0.13;
              });
              i++;
            }
            else {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return arrayExplain1();
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