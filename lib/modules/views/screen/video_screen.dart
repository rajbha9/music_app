import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

import '../../components/video/video_play.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  final List<String> videos = [
    'assets/video/v1.mp4',
    'assets/video/v2.mp4',
    'assets/video/v3.mp4',
    'assets/video/v4.mp4',
    'assets/video/v5.mp4',
    'assets/video/v6.mp4',
    'assets/video/v7.mp4',
    'assets/video/v8.mp4',
    'assets/video/v9.mp4',
    'assets/video/v10.mp4',
    'assets/video/v11.mp4',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade300.withOpacity(0.8),
          ],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.transparent,
          title: const Text(
            'Shorts',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SizedBox(
            child: Stack(
              children: [
                Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return VideoPlay(
                      videoData: videos[index],
                    );
                  },
                  itemCount: videos.length,
                  scrollDirection: Axis.vertical,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
