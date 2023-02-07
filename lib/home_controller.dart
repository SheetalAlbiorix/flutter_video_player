import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class HomeController extends GetxController {
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initializePlayer();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    videoPlayerController?.dispose();
    chewieController?.dispose();
  }

  Future<void> initializePlayer() async {
    videoPlayerController = VideoPlayerController.network(
        'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4');

    await Future.wait([videoPlayerController!.initialize()]);
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController!,
      autoPlay: true,
      looping: true,
      materialProgressColors: ChewieProgressColors(
          playedColor: Colors.white54,
          handleColor: Colors.black,
          backgroundColor: Colors.grey,
          bufferedColor: Colors.white70),
      placeholder: Container(
        color: Colors.lightGreen,
      ),
      autoInitialize: true,
      allowPlaybackSpeedChanging: true,
      showControls: true,
    );

    update();
  }
}
