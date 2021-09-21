import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/while3/whileExplain3T.dart';

class whileExplain3_3f extends StatefulWidget {
  @override
  _whileExplain3_3fState createState() => _whileExplain3_3fState();
}
class _whileExplain3_3fState extends State<whileExplain3_3f> {
  String a='https://i.imgur.com/EZYFMVf.png';
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
                a='https://i.imgur.com/iRXZ59Z.png';
                b=0.09;
              });
            }else if(i==2) {
              setState(() {
                a = 'https://i.imgur.com/Th6G9L0.png';
              });
            }else if(i==3){
              setState(() {
                a = 'https://i.imgur.com/myQvtY2.png';
              });
            }else if(i==4){
              setState(() {
                a = 'https://i.imgur.com/WwTHSKA.png';
              });
            }else if(i==5){
              setState(() {
                a = 'https://i.imgur.com/fIYVK3k.png';
              });
            }else if(i==6){
              setState(() {
                a = 'https://i.imgur.com/la52fVs.png';
              });
            }else if(i==7){
              setState(() {
                a = 'https://i.imgur.com/hSYSnOT.png';
              });
            }else if(i==8){
              setState(() {
                a = 'https://i.imgur.com/H0Ybu1y.png';
              });
            }else if(i==9){
              setState(() {
                a = 'https://i.imgur.com/mZWwfcA.png';
              });
            }else if(i==10){
              setState(() {
                a = 'https://i.imgur.com/hzUyYEa.png';
              });
            }else if(i==11){
              setState(() {
                a = 'https://i.imgur.com/wSkgnkA.png';
              });
            }else
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) {
                    return whileExplain3T();
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