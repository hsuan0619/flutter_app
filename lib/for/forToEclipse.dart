import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/for/forEclipseVideo.dart';

class forToEclipse extends StatefulWidget {
  @override
  _forToEclipseState createState() => _forToEclipseState();
}
class _forToEclipseState extends State<forToEclipse> {
  String a='https://i.imgur.com/S1ufDRl.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          talk(),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.23,
            bottom : MediaQuery.of(context).size.height * 0.13,
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
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) {
                    return forEclipseVideo();
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