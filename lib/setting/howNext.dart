import 'package:flutter/material.dart';
import 'package:untitled/background/talk%20background.dart';
import 'package:untitled/setting/notice.dart';

class howNext extends StatefulWidget {
  @override
  _howNextState createState() => _howNextState();
}
class _howNextState extends State<howNext> {

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
                'https://i.imgur.com/ArHl4WW.png',
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
                      return notice();
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