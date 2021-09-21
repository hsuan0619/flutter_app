import 'package:flutter/material.dart';
import 'package:untitled/background/question%20background.dart';
import 'package:untitled/nest/toWhileAll.dart';

class nestQ extends StatefulWidget {
  @override
  _nestQState createState() => _nestQState();
}
class _nestQState extends State<nestQ> {
  String a='https://i.imgur.com/fYtjO7i.png';
  double b=0.1;
  int i=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          question(),
          //題目
          Positioned(
            left: MediaQuery.of(context).size.width * 0.1,
            bottom : MediaQuery.of(context).size.height * b,
            child:
            Image.network(
              a,
              width: MediaQuery.of(context).size.width * 0.78,
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
            if(i==1) {
              setState((){
                a='https://i.imgur.com/e2v1MeM.png';
                b=0.35;
              });
            }else if(i==2){
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return toWhileAll();
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