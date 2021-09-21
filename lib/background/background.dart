import 'package:flutter/material.dart';


class background extends StatefulWidget {
  @override
  _backgroundState createState() => _backgroundState();
}

class _backgroundState extends State<background> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Stack(
              children: [
                // 牆壁
                Container(
                  alignment: Alignment.bottomLeft,
                  child:
                  Image.network(
                    'https://i.imgur.com/1oalBku.png',
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                // 黑板
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.05,
                  bottom: MediaQuery.of(context).size.height * 0.1,
                  child:
                  Image.network(
                    'https://i.imgur.com/ceyDxvU.png',
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                ),
                // 板擦
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.14,
                  bottom: MediaQuery.of(context).size.height * 0.17,
                  child:
                  Image.network(
                    'https://i.imgur.com/WKQG7AF.png',
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                ),
                // 粉筆
                Positioned(
                    left: MediaQuery.of(context).size.width * 0.25,
                    bottom: MediaQuery.of(context).size.height * 0.17,
                    child:
                    Image.network(
                      'https://i.imgur.com/fhWfYAW.png',
                      width: MediaQuery.of(context).size.width *0.06,
                    )
                ),

                Positioned(
                    left: MediaQuery.of(context).size.width * 0.32,
                    bottom: MediaQuery.of(context).size.height * 0.17,
                    child:
                    Image.network(
                      'https://i.imgur.com/zZr11nM.png',
                      width: MediaQuery.of(context).size.width * 0.06,
                    )
                ),

                Positioned(
                    left: MediaQuery.of(context).size.width * 0.39,
                    bottom: MediaQuery.of(context).size.height * 0.17,
                    child:
                    Image.network(
                      'https://i.imgur.com/XdX2aNX.png',
                      width: MediaQuery.of(context).size.width * 0.06,
                    )
                ),

                Positioned(
                    left: MediaQuery.of(context).size.width * 0.46,
                    bottom: MediaQuery.of(context).size.height * 0.17,
                    child:
                    Image.network(
                      'https://i.imgur.com/dwh9pwP.png',
                      width: MediaQuery.of(context).size.width * 0.06,
                    )
                ),

                //以上為固定基本配置 OVO

              ]
          )
      );
  }
}


