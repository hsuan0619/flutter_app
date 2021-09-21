import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/while3/whileExplain3T.dart';

class whileExplain3_1f extends StatefulWidget {
  @override
  _whileExplain3_1fState createState() => _whileExplain3_1fState();
}
class _whileExplain3_1fState extends State<whileExplain3_1f> {
  String a='https://i.imgur.com/DYZRJ3D.png';
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
                a='https://i.imgur.com/2n9EhXv.png';
                b=0.09;
              });
            }else if(i==2) {
              setState(() {
                a = 'https://i.imgur.com/38GIAiu.png';
              });
            }else if(i==3){
              setState(() {
                a = 'https://i.imgur.com/dmZJmin.png';
              });
            }else if(i==4){
              setState(() {
                a = 'https://i.imgur.com/M5w4Few.png';
              });
            }else if(i==5){
              setState(() {
                a = 'https://i.imgur.com/uPhuoLu.png';
              });
            }else if(i==6){
              setState(() {
                a = 'https://i.imgur.com/MwJEhIR.png';
              });
            }else if(i==7){
              setState(() {
                a = 'https://i.imgur.com/Tt6yBxW.png';
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