import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:untitled/break1/breakExplain1.dart';
import 'dart:async';


class breakPrediction1 extends StatefulWidget {
  @override
  _breakPrediction1State createState() => _breakPrediction1State();
}

class _breakPrediction1State extends State<breakPrediction1> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'SipSyryP9_w',
      params: const YoutubePlayerParams(
        playlist: [
          'SipSyryP9_w',
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
    int videoTime = 156;

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
                        return breakExplain1();
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