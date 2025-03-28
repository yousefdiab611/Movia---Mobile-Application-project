import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/data/gallery.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/spacing.dart';

class MoviesAndSeriesGallery extends StatefulWidget {
  const MoviesAndSeriesGallery({Key? key}) : super(key: key);

  @override
  State<MoviesAndSeriesGallery> createState() => _MoviesAndSeriesGalleryState();
}

class _MoviesAndSeriesGalleryState extends State<MoviesAndSeriesGallery> {
 
 int imgIndex= 0;
 
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return SafeArea(
      child: Scaffold(
        
        body:RotatedBox(quarterTurns: 1,
        
        child: Stack(
          alignment: Alignment.center,
    
          children: [
            Image.asset(movieGalleryList[imgIndex],
            height: size.width,
            width: size.height,
            fit: BoxFit.fill,
            ),
            Container(
              height: size.width,
              width: size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient
                (
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  
                  colors:isDark?
                  [

                    Colors.black.withOpacity(0.8),
                   Colors.transparent
                  ]:
                   [
                  ColorConstant.whiteA700,
                  Colors.transparent
                ]
                )
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(padding: getPadding(
                left: 10,
                right: 10,
                bottom: 24,
                top: 24,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisSize: MainAxisSize.max,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                Row(
                  children: [
                    BkBtn(),
                    HorizontalSpace(width: 40)
                  ],
                ),
                Column(
                  mainAxisSize:MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('A Quite place',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SF Pro Display',
                      fontSize: 18
                    ),
                    textAlign: TextAlign.center,
                    ),
                    Text('${imgIndex+1}/${movieGalleryList.length}',
                     style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SF Pro Display',
                      fontSize: 12,
                      color: ColorConstant.gray600
                    ),
                    textAlign: TextAlign.center,
                    )
                  ],

                )
             , Row(
                children: [
                  Icon(Icons.share,
                  size: 20,
                  
                  color:isDark?Colors.white: Colors.black),
                 HorizontalSpace(width: 20)
,                  ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            38.00,
                                          ),
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgUseravatar76X76,
                                          height: getSize(
                                            30.00,
                                          ),
                                          width: getSize(
                                            30.00,
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                ],
              )
              
               ],
              ),
              
              ),
              
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RotatedBox(
                quarterTurns: 1,
                child: Container(
                  margin: getMargin(
                    top: 24,
                    bottom: 24,
                    right:15,
                    left: 15 
                  ),
                  height: size.height,
                  width: getHorizontalSize(60),
                  decoration: BoxDecoration(
                    color:isDark?ColorConstant.darkContainer: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(7),
              
                  ),
                 child: Stack(
                   children: [
                  
                     Padding(
                        padding: getPadding(
                        top: 20,
                        bottom: 20,
                        left: 10,
                        right: 10
                      ),
                       child: ListView.separated(
                      
                        
                          itemBuilder:
                         (context,index){
                          return RotatedBox(
                            quarterTurns: 3,
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  imgIndex=index;
                                });
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Image.asset(movieGalleryList[index],
                                width: getHorizontalSize(64),
                                height: getVerticalSize(36),
                                fit: BoxFit.fill,
                                ),
                                          
                              ),
                            ),
                          );
                        },
                         separatorBuilder: (context,index)=>VerticalSpace(height: 10),
                         shrinkWrap: true,
                          itemCount: movieGalleryList.length),
                     ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                  
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         InkWell(
                           onTap: (){
                          setState(() {
                            if(imgIndex>0)
                            imgIndex--;
                          });
                        },
                           child: Container(
                                               width: getHorizontalSize(36),
                                               height: getVerticalSize(36),
                                               padding: getPadding(
                                                 all: 4
                                               ),
                                               decoration: BoxDecoration(
                                                 shape: BoxShape.circle,
                                                 color: isDark?ColorConstant.darkContainer:Colors.white
                                               ),
                                               child: RotatedBox(
                                                 quarterTurns: 1,
                                                 child: CommonImageView(
                                  isRtl: isRtl,
                                  isDark: isDark,
                                 
                                  imagePath: ImageConstant.back,
                                  height: getSize(
                                    36.00,
                                  ),
                                  width: getSize(
                                    36.00,
                                  ),
                                ),
                                               ),
                                              ),
                         ),
                       InkWell(
                        onTap: (){
                          setState(() {
                            
                            imgIndex++;
                          });
                        },
                         child: Container(
                                             width: getHorizontalSize(36),
                                             height: getVerticalSize(36),
                                             padding: getPadding(
                          all: 4
                                             ),
                                             decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isDark?ColorConstant.darkContainer:Colors.white
                                             ),
                                             child: RotatedBox(
                          quarterTurns: 3,
                          child: CommonImageView(
                                  isRtl: isRtl,
                                  isDark: isDark,
                                 
                                  imagePath: ImageConstant.back,
                                  height: getSize(
                                    36.00,
                                  ),
                                  width: getSize(
                                    36.00,
                                  ),
                                ),
                                             ),
                                            ),
                       ),
                      
                      ],
                    ),
                  )
                  
                   ],
                 )
                  
                        
                ),
              ),
            )
          ],
        ),
        ) ,
      ),
    );
    
  }
}