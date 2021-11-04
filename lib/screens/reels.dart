import 'package:flutter/material.dart';
import 'package:myinstagram_clone/widget/video_items.dart';
import 'package:video_player/video_player.dart';

class reels extends StatefulWidget {
  const reels({ Key? key }) : super(key: key);

  @override
  _reelsState createState() => _reelsState();
}

class _reelsState extends State<reels> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/video_6.mp4',
            ),
            looping: true,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
            ),
            looping: false,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
                'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
            ),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/video_2.mp4',
            ),
            looping: false,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"
            ),
            looping: true,
            autoplay: false,
          ),
        ],
      );
  }
}