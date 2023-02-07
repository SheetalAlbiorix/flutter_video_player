import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/home_controller.dart';
import 'package:get/get.dart';

class VideoPlayScreen extends StatefulWidget {
  const VideoPlayScreen({Key? key}) : super(key: key);

  @override
  State<VideoPlayScreen> createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {
  // VideoPlayerController? videoPlayerController;
  // Future<void>? videoPlayerFuture;
  // VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.network(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
    //   ..initialize().then((_) {
    //     // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    //     setState(() {});
    //   });
    // _controller?.setLooping(true);
    // _controller?.play();
  }

  @override
  void dispose() {
    // _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Video Player Sample'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          GetBuilder<HomeController>(
              init: HomeController(),
              builder: (controller) => Expanded(
                      child: Center(
                    child: controller.chewieController != null &&
                            controller.chewieController!.videoPlayerController
                                .value.isInitialized
                        ? Chewie(controller: controller.chewieController!)
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Loading')
                            ],
                          ),
                  )))
        ],
      ),
    );

/*    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: _controller!.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller!.value.aspectRatio,
                    child: VideoPlayer(_controller!),
                  )
                : Container(),
          ),
          //_ControlsOverlay(controller: _controller),
          VideoProgressIndicator(_controller!, allowScrubbing: true),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller!.value.isPlaying
                ? _controller?.pause()
                : _controller?.play();
          });
        },
        child: Icon(
          _controller!.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );

    */
  }
}
