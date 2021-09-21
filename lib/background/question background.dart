import 'package:flutter/material.dart';
import 'package:untitled/background/background.dart';

class question extends StatefulWidget {
  @override
  _questionState createState() => _questionState();
}
class _questionState extends State<question> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            background(),
            Container(
              color: Colors.black54,
            ),
            //talk back
            Positioned(
              left: MediaQuery.of(context).size.width * 0.08,
              bottom: MediaQuery.of(context).size.height * 0.08,
              child:
              Image.network(
                'https://i.imgur.com/UxSsJ6F.png',
                width: MediaQuery.of(context).size.width * 0.83,
              ),
            ),
            //下竹竿
            Positioned(
              left: MediaQuery.of(context).size.width * 0.05,
              bottom: MediaQuery.of(context).size.height * 0.06,
              child:
              Image.network(
                'https://i.imgur.com/Ru0cAqy.png',
                width: MediaQuery.of(context).size.width * 0.9,
              ),
            ),
            //上竹竿
            Positioned(
              left: MediaQuery.of(context).size.width * 0.06,
              bottom: MediaQuery.of(context).size.height * 0.83,
              child:
              Image.network(
                'https://i.imgur.com/Ru0cAqy.png',
                width: MediaQuery.of(context).size.width * 0.87,
              ),
            ),
            //左竹竿
            Positioned(
              left: MediaQuery.of(context).size.width * 0.055,
              bottom: MediaQuery.of(context).size.height * 0.03,
              child:
              Image.network(
                'https://i.imgur.com/Vukx7cU.png',
                height: MediaQuery.of(context).size.height * 0.9,
              ),
            ),
            //右竹竿
            Positioned(
              right: MediaQuery.of(context).size.width * 0.06,
              bottom: MediaQuery.of(context).size.height * 0.03,
              child:
              Image.network(
                'https://i.imgur.com/cVWVJp0.png',
                height: MediaQuery.of(context).size.height * 0.9,
              ),
            ),
            //葉子左上
            Positioned(
              left: MediaQuery.of(context).size.width * 0.2,
              bottom: MediaQuery.of(context).size.height * 0.75,
              child:
              Image.network(
                'https://i.imgur.com/JtYUyZs.png',
                width: MediaQuery.of(context).size.width * 0.15,
              ),
            ),
            //葉子右上
            Positioned(
              right: MediaQuery.of(context).size.width * 0.04,
              bottom: MediaQuery.of(context).size.height * 0.75,
              child:
              Image.network(
                'https://i.imgur.com/ZMI5JCh.png',
                width: MediaQuery.of(context).size.width * 0.13,
              ),
            ),
            //葉子右下
            Positioned(
              right: MediaQuery.of(context).size.width * 0.08,
              bottom: MediaQuery.of(context).size.height * 0.07,
              child:
              Image.network(
                'https://i.imgur.com/QNutryO.png',
                width: MediaQuery.of(context).size.width * 0.07,
              ),
            ),
            //葉子左下
            Positioned(
              left: MediaQuery.of(context).size.width * 0.06,
              bottom: MediaQuery.of(context).size.height * 0.07,
              child:
              Image.network(
                'https://i.imgur.com/Bdgr2lQ.png',
                width: MediaQuery.of(context).size.width * 0.09,
              ),
            ),
          ],
        )
    );
  }
}