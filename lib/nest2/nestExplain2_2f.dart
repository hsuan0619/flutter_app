import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/nest2/nestExplainT2.dart';

class nestExplain2_2f extends StatefulWidget {
  @override
  _nestExplain2_2fState createState() => _nestExplain2_2fState();
}
class _nestExplain2_2fState extends State<nestExplain2_2f> {
  String a='https://i.imgur.com/ghXd3y8.png';
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
                a='https://i.imgur.com/fWcMR5K.png';
                b=0.09;
              });
            }else if(i==2) {
              setState((){
                a='https://i.imgur.com/VBsRfdK.png';
              });
            }else if(i==3) {
              setState((){
                a='https://i.imgur.com/SeZKuYT.png';
              });
            }else if(i==4) {
              setState((){
                a='https://i.imgur.com/WwdYXDt.png';
              });
            }else if(i==5) {
              setState((){
                a='https://i.imgur.com/6rfINKU.png';
              });
            }else if(i==6) {
              setState((){
                a='https://i.imgur.com/o3uOvtG.png';
              });
            }else if(i==7) {
              setState((){
                a='https://i.imgur.com/nkyboDY.png';
              });
            }else if(i==8) {
              setState((){
                a='https://i.imgur.com/CBqVUkO.png';
              });
            }else if(i==9) {
              setState((){
                a='https://i.imgur.com/Ik1bRnG.png';
              });
            }else if(i==10) {
              setState((){
                a='https://i.imgur.com/Br51XM0.png';
              });
            }else if(i==11) {
              setState((){
                a='https://i.imgur.com/RdVYckk.png';
              });
            }else if(i==12) {
              setState((){
                a='https://i.imgur.com/2uhf61s.png';
              });
            }else if(i==13) {
              setState((){
                a='https://i.imgur.com/VjIZARf.png';
              });
            }else if(i==14) {
              setState((){
                a='https://i.imgur.com/1qnR9mw.png';
              });
            }else if(i==15) {
              setState((){
                a='https://i.imgur.com/cUIBpLa.png';
              });
            }else if(i==16) {
              setState((){
                a='https://i.imgur.com/qjwLULi.png';
              });
            }else if(i==17) {
              setState((){
                a='https://i.imgur.com/mC7LRr9.png';
              });
            }else if(i==18) {
              setState((){
                a='https://i.imgur.com/s1CYMZb.png';
              });
            }else if(i==19) {
              setState((){
                a='https://i.imgur.com/3EJ0LDl.png';
              });
            }else if(i==20) {
              setState((){
                a='https://i.imgur.com/0ITlWcv.png';
              });
            }else if(i==21) {
              setState((){
                a='https://i.imgur.com/p8KbpLV.png';
              });
            }else
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) {
                    return nestExplainT2();
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