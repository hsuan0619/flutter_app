import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/array/arrayExplainT.dart';

class arrayExplain1f extends StatefulWidget {
  @override
  _arrayExplain1fState createState() => _arrayExplain1fState();
}
class _arrayExplain1fState extends State<arrayExplain1f> {
  String a='https://i.imgur.com/6Vidt4l.png';
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
                a='https://i.imgur.com/vt4llay.png';
                b=0.08;
              });
            }else if(i==2)
            {
              setState((){
                a='https://i.imgur.com/35zw7Wc.png';
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