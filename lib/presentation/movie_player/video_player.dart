import 'package:flutter/material.dart';
import 'package:movia/models/image_name_model.dart';
import 'package:video_player/video_player.dart';
import '../../core/app_export.dart';
import 'basic_overlay_widget.dart';

//ignore: must_be_immutable
class VideoPlayerWidget extends StatelessWidget {
   VideoPlayerController controller;
   ImageNameModel movie;
  
   VideoPlayerWidget({required this.controller,
   required this.movie
   }) ;

  @override
  Widget build(BuildContext context) {
    return controller.value.isInitialized ?
    RotatedBox(
      quarterTurns: 1,
      child: Center(
        child:buildVideo(
          
        ) ,
      ),
    )
    :Center(
      child: CircularProgressIndicator(
        color: ColorConstant.redA400,
      ),
    );
    
  }

  Widget buildVideo(){
    return Stack(
      children: [
        buildVideoPlayer(),
        Positioned.fill(child: BasicOverlayWidget(controller: controller, movie: movie,
        
        ) )
      ],
    );
  }
  
 Widget buildVideoPlayer() {
return
    AspectRatio(
      aspectRatio:controller.value.aspectRatio,
      child: VideoPlayer(controller));
  }
}