import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/home_controller.dart';
import 'package:get/get.dart';

class VideoPlayScreen extends StatelessWidget {
  const VideoPlayScreen({Key? key}) : super(key: key);

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
                        /* ? Container(
                            height: 200,
                            child: FlickVideoPlayer(
                              flickManager: controller.flickManager!,
                              flickVideoWithControls:
                                  const FlickVideoWithControls(
                                willVideoPlayerControllerChange: false,
                                controls: FlickPortraitControls(),
                                // controls: Column(
                                //   children: [
                                //     Container(
                                //       color: Colors.transparent,
                                //       padding: EdgeInsets.symmetric(
                                //           horizontal: 20, vertical: 20),
                                //       child: IconTheme(
                                //         data: IconThemeData(
                                //             color: Colors.white70, size: 30),
                                //         child: Column(
                                //           crossAxisAlignment:
                                //               CrossAxisAlignment.end,
                                //           children: <Widget>[
                                //             Row(
                                //               mainAxisAlignment:
                                //                   MainAxisAlignment.end,
                                //               children: const [
                                //                 FlickAutoHideChild(
                                //                   autoHide: false,
                                //                   showIfVideoNotInitialized:
                                //                       false,
                                //                   child: FlickSoundToggle(),
                                //                 ),
                                //               ],
                                //             ),
                                //           ],
                                //         ),
                                //       ),
                                //     ),
                                //     // Container(
                                //     //   height: 100,
                                //     //     child: FlickShowControlsAction(
                                //     //
                                //     //     )),
                                //     FlickPlayToggle(),
                                //     FlickLeftDuration(),
                                //
                                //   ],
                                // ),
                              ),
                              flickVideoWithControlsFullscreen:
                                  const FlickVideoWithControls(
                                controls: FlickLandscapeControls(),
                              ),
                            ),
                          )*/
                        ? Chewie(
                            controller: controller.chewieController!,
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
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

    /*child: FlickVideoPlayer(
      flickManager: controller.flickManager!,
      flickVideoWithControls: FlickVideoWithControls(
        willVideoPlayerControllerChange: false,
        controls: Container(
          color: Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: IconTheme(
            data: IconThemeData(color: Colors.white70, size: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    FlickAutoHideChild(
                      autoHide: false,
                      showIfVideoNotInitialized: false,
                      child: FlickSoundToggle(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      flickVideoWithControlsFullscreen: FlickVideoWithControls(
        controls: FlickLandscapeControls(),
      ),
    ),*/
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
