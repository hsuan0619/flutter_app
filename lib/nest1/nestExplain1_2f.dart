import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/nest1/nestExplainT1.dart';

class nestExplain1_2f extends StatefulWidget {
  @override
  _nestExplain1_2fState createState() => _nestExplain1_2fState();
}
class _nestExplain1_2fState extends State<nestExplain1_2f> {
  String a='https://i.imgur.com/LJA2Rpl.png';
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
                a='https://i.imgur.com/rAiybnJ.png';
                b=0.09;
              });
            }else if(i==2) {
              setState((){
                a='https://i.imgur.com/7vEpLeI.png';
              });
            }else if(i==3) {
              setState((){
                a='https://i.imgur.com/kR5toTc.png';
              });
            }else if(i==4) {
              setState((){
                a='https://i.imgur.com/jpbLIxs.png';
              });
            }else if(i==5) {
              setState((){
                a='https://i.imgur.com/BCHw50i.png';
              });
            }else if(i==6) {
              setState((){
                a='https://i.imgur.com/FpLgbIp.png';
              });
            }else if(i==7) {
              setState((){
                a='https://i.imgur.com/tQDVqI9.png';
              });
            }else if(i==8) {
              setState((){
                a='https://i.imgur.com/xRswzOm.png';
              });
            }else if(i==9) {
              setState((){
                a='https://i.imgur.com/IkQnEIB.png';
              });
            }else
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) {
                    return nestExplainT1();
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