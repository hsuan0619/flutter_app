import 'package:flutter/material.dart';
import 'package:untitled/background/background.dart';

class talk extends StatefulWidget {
  @override
  _talkState createState() => _talkState();
}
class _talkState extends State<talk> {

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
                  'https://i.imgur.com/wwRehA6.png',
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
              bottom: MediaQuery.of(context).size.height * 0.32,
              child:
              Image.network(
                'https://i.imgur.com/Ru0cAqy.png',
                width: MediaQuery.of(context).size.width * 0.87,
              ),
            ),
            //左竹竿
            Positioned(
              left: MediaQuery.of(context).size.width * 0.06,
              bottom: MediaQuery.of(context).size.height * 0.03,
              child:
              Image.network(
                'https://i.imgur.com/FV5N70u.png',
                height: MediaQuery.of(context).size.height * 0.37,
              ),
            ),
            //右竹竿
            Positioned(
              right: MediaQuery.of(context).size.width * 0.07,
              bottom: MediaQuery.of(context).size.height * 0.03,
              child:
              Image.network(
                'https://i.imgur.com/TNvgKrL.png',
                height: MediaQuery.of(context).size.height * 0.37,
              ),
            ),
            //葉子左上
            Positioned(
              left: MediaQuery.of(context).size.width * 0.2,
              bottom: MediaQuery.of(context).size.height * 0.26,
              child:
              Image.network(
                'https://i.imgur.com/JtYUyZs.png',
                width: MediaQuery.of(context).size.width * 0.13,
              ),
            ),
            //葉子右上
            Positioned(
              right: MediaQuery.of(context).size.width * 0.04,
              bottom: MediaQuery.of(context).size.height * 0.24,
              child:
              Image.network(
                'https://i.imgur.com/ZMI5JCh.png',
                width: MediaQuery.of(context).size.width * 0.11,
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
            //熊熊
            Positioned(
              left: MediaQuery.of(context).size.width * 0.06,
              bottom: 0,
              child:
              Image.network(
                'https://i.imgur.com/c7lzdLk.png',
                height: MediaQuery.of(context).size.height * 0.45,
              ),
            ),
          ],
        )
    );

  }
}