import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:untitled/for1/forExplain1.dart';
import 'dart:async';


class forPrediction1 extends StatefulWidget {
  @override
  _forPrediction1State createState() => _forPrediction1State();
}

class _forPrediction1State extends State<forPrediction1> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: '3c0AM828vuE',
      params: const YoutubePlayerParams(
        playlist: [
          '3c0AM828vuE',
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
    int videoTime = 115;

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
                        return forExplain1();
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