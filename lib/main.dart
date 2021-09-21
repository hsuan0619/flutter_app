import 'package:flutter/material.dart';
import 'package:untitled/background/background.dart';
import 'package:untitled/setting/start.dart';

void main() {
  runApp(MyApp());
}
//初始程式碼
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        buttonTheme: ButtonThemeData(height: 25)
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title:'程式設計系統',),
    );
  }
}

//HomePage
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          background(),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.11,
            top: MediaQuery.of(context).size.height * 0.05,
            child:
            Image.network(
              'https://i.imgur.com/7u9SJzz.png',
              width: MediaQuery.of(context).size.width * 0.45,
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.33,
            top: MediaQuery.of(context).size.height * 0.43,
            child:
            Image.network(
              'https://i.imgur.com/qA93lj6.png',
              width: MediaQuery.of(context).size.width * 0.35,
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.15,
            top: MediaQuery.of(context).size.height * 0.43,
            child:
              IconButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return start();
                      },
                    ),
                  );
                },
                icon:(
                  Image.network(
                    'https://i.imgur.com/oUroRnd.png'
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


