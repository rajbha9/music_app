import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoPlay extends StatefulWidget {
  final String? videoData;
  const VideoPlay({super.key, this.videoData});

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  Future initializePlayer() async {
    _videoPlayerController = VideoPlayerController.asset(widget.videoData!);
    await Future.wait([_videoPlayerController.initialize()]);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      allowedScreenSleep: false,
      showOptions: true,
      allowPlaybackSpeedChanging: true,
      draggableProgressBar: true,
      showControls: true,
      allowFullScreen: true,
      looping: true,
      autoInitialize: true,
      showControlsOnInitialize: true,
    );
    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController!.dispose();
    super.dispose();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        _chewieController != null &&
                _chewieController!.videoPlayerController.value.isInitialized
            ? GestureDetector(
                child: Chewie(
                  controller: _chewieController!,
                ),
              )
            : Container(),
      ],
    );
  }
}
