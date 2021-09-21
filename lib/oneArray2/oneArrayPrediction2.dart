import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:untitled/oneArray2/oneArrayExplain2.dart';
import 'dart:async';


class oneArrayPrediction2 extends StatefulWidget {
  @override
  _oneArrayPrediction2State createState() => _oneArrayPrediction2State();
}

class _oneArrayPrediction2State extends State<oneArrayPrediction2> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'or77N_eFRy4',
      params: const YoutubePlayerParams(
        playlist: [
          'or77N_eFRy4',
        ],
        desktopMode: false,
        privacyEnhanced: true,
        useHybridComposition: true,
        showFullscreenButton: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame();
    int timenow = 0;
    int videoTime = 97;

    Timer.periodic(const Duration(seconds: 1), (timer) {
      timenow++;
    });

    return YoutubePlayerControllerProvider(
      // Passing controller to widgets below.
      controller: _controller,
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return ListView(
              children: [
                player,
              ],
            );
          },
        ),
        floatingActionButton: SizedBox(
          width: MediaQuery.of(context).size.width * 0.05,
          child:
          FloatingActionButton(
            onPressed: () {
              if(timenow>=videoTime)
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) {
                        return oneArrayExplain2();
                      }
                  ),
                );
            },
            child:
            Image.network('https://i.imgur.com/8sotS2s.png'),
          ),
        ),
      ),
    );

  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}