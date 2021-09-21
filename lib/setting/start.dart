import 'package:flutter/material.dart';
import 'package:untitled/background/background.dart';
import 'package:untitled/setting/howNext.dart';

class start extends StatefulWidget {
  @override
  _startState createState() => _startState();
}
class _startState extends State<start> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            background(),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.43,
              top: MediaQuery.of(context).size.height * 0.2,
              child:
              Image.network(
                'https://i.imgur.com/RMsBMkX.png',
                width: MediaQuery.of(context).size.width * 0.45,
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.48,
              top: MediaQuery.of(context).size.height * 0.6,
              child:
              Image.network(
                'https://i.imgur.com/vPwI0ok.png',
                width: MediaQuery.of(context).size.width * 0.35,
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.15,
              top: MediaQuery.of(context).size.height * 0.23,
              child:
              IconButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) {
                          return howNext();
                        }
                    ),
                  );
                },
                icon:(
                    Image.network(
                        'https://i.imgur.com/yuz0VrA.png'
                    )
                ),
                iconSize: MediaQuery.of(context).size.width * 0.25,
              ),
            ),
          ],
        )
    );

  }
}