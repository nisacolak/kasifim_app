import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/explore/description.dart';
import 'package:kasifim_app/app/views/explore/explore_title.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:video_player/video_player.dart';

import 'side_bar.dart';

class VideoPlayerScreen extends StatefulWidget {
  VideoPlayerScreen({Key? key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(Assets.videos.coffee);

    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      _controller.play();
    });
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      backgroundColor: ColorName.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.all(10),
            centerTitle: true,
            title: ExploreTitle()),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: Stack(children: [
          Center(
            child: FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
          Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(flex: 14, child: ExploreDescription()),
                  SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    flex: 2,
                    child: ExploreSideBar(),
                  )
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
