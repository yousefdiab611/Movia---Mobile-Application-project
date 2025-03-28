import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/models/image_name_model.dart';
import 'package:movia/widgets/spacing.dart';
import 'package:video_player/video_player.dart';
import '../../core/app_export.dart';

//ignore: must_be_immutable
class BasicOverlayWidget extends StatefulWidget {


  VideoPlayerController controller;
    ImageNameModel movie;
   

   BasicOverlayWidget({required this.controller,
   required this.movie
   });

  @override
  State<BasicOverlayWidget> createState() => _BasicOverlayWidgetState();
}

class _BasicOverlayWidgetState extends State<BasicOverlayWidget> {
  bool isOptionsShowed=false;
 format(Duration d) => d.toString().split('.').first.padLeft(8, "0").replaceFirst('00:', '');

  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
     var duration=widget.controller.value.duration;
     var position=widget.controller.value.position;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: (){
          if (widget.controller.value.isPlaying){
            setState(() {
               isOptionsShowed=!isOptionsShowed;
            });
          }
      },
      child: isOptionsShowed || !widget.controller.value.isPlaying? Stack(
        children: [
        Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child:isRtl? RotatedBox(
                  quarterTurns: 2,
                  child: Image.asset(
                               ImageConstant.back,
                               color: Colors.white,
                                height: getSize(
                                  36.00,
                                ),
                                width: getSize(
                                  36.00,
                                ),
                              ),
                ):Image.asset(
                             ImageConstant.back,
                             color: Colors.white,
                              height: getSize(
                                36.00,
                              ),
                              width: getSize(
                                36.00,
                              ),
                            ),
              ),
              HorizontalSpace(width: 20),
              Text(widget.movie.name,
              style: TextStyle(
                                    
                                    fontSize: getFontSize(
                                      18,
                                    ),
                                    color: Colors.white,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                    height: 1.00,
                                  ),
              )
            ],
          ),
        ),
          builPlayButton(),
         
         
          Positioned(
            bottom:  0,
            left: 0,
            right: 0,
            child: Row(
              children: [
                Text(format(position),

                style: TextStyle(color: Colors.white),),
                HorizontalSpace(width: 8),
                Expanded(child: buildIndicator),
                 HorizontalSpace(width: 8),
                 Text(format(duration),

                style: TextStyle(color: Colors.white),),
               
                 ],
            )
            ),
            
    
        ],
      ):SizedBox(),
    );
    
  }

 Widget get buildIndicator {
  return VideoProgressIndicator(widget.controller, allowScrubbing: true,

  colors:VideoProgressColors(
    bufferedColor: ColorConstant.red100,

    playedColor: ColorConstant.redA400
   
  ) ,
  
  );
 }

 Widget builPlayButton() {
  return widget.controller.value.isPlaying && isOptionsShowed?
  Center(
    child: GestureDetector(
      onTap: (){
        widget.controller.pause();
      },
      child: Container(
        padding: getPadding(
          all: 16
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorConstant.redA400,
        ),
        child: Icon(Icons.pause_rounded,
        color: Colors.white,
        ),
    
      ),
    ),
  ):
  Center(
    child: GestureDetector(
      onTap: (){
        widget.controller.play();
      },
      child: Container(
        padding: getPadding(
          all: 16
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorConstant.redA400,
        ),
        child: Icon(Icons.play_arrow_rounded,
        color: Colors.white,),
    
      ),
    ),
  );

 }
}