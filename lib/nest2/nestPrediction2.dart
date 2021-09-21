import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:untitled/nest2/nestExplain2.dart';
import 'dart:async';


class nestPrediction2 extends StatefulWidget {
  @override
  _nestPrediction2State createState() => _nestPrediction2State();
}

class _nestPrediction2State extends State<nestPrediction2> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'VzJgt6wzJ70',
      params: const YoutubePlayerParams(
        playlist: [
          'VzJgt6wzJ70',
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
    int videoTime = 412;

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
                        return nestExplain2();
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