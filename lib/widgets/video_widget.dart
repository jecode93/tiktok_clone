import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({Key? key, required this.videoUrl}) : super(key: key);
  final String videoUrl;

  @override
  // ignore: no_logic_in_create_state
  _VideoWidgetState createState() => _VideoWidgetState(videoUrl);
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  final String videoUrl;

  _VideoWidgetState(this.videoUrl);

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.asset(videoUrl)
      ..initialize().then((_) {
        setState(() {});
      });
    _controller.play;
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}
