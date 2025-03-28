import 'package:flutter/material.dart';
import 'package:movia/models/image_name_model.dart';
import 'package:movia/presentation/movie_player/video_player.dart';
import 'package:video_player/video_player.dart';
//ignore: must_be_immutable
class MoviePlayer extends StatefulWidget {
  ImageNameModel movie;
   MoviePlayer({
    required this.movie
  }) ;

  @override
  State<MoviePlayer> createState() => _MoviePlayerState();
}

class _MoviePlayerState extends State<MoviePlayer> {
  
   VideoPlayerController? videoPlayerController;
  final asset = "assets/Disney'sMulan-OfficialTrailer.mp4";

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoPlayerController = VideoPlayerController.asset(asset)
      ..addListener(() {
        setState(() {});
      })
      ..setLooping(true)
      ..initialize().then((value) => videoPlayerController!.play());
  
  }

   @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    videoPlayerController!.dispose();
 
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: VideoPlayerWidget(controller: videoPlayerController!,
        movie: widget.movie,
              ),
      ),
    );
    }
}