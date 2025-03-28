import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/spacing.dart';


class ReviewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
        
        body:SafeArea( 
          child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Padding(
              padding: getPadding(
                left: 24,
                top: 20,
                bottom: 10,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                BkBtn(),
               
                  Padding(
                    padding: getPadding(
                    
                      top: 6,
                      bottom: 6,
                    ),
                    child: Text(
                      "Vikings / Reviews",
                      overflow: TextOverflow.ellipsis,
                      textAlign:  TextAlign.start,
                      style: TextStyle(
                        
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        height: 1.00,
                      ),
                    ),
                  ),
               HorizontalSpace(width: 36)
               
                ],
              ),
            ),
          
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                       Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 24,
                              top: 4,
                              right: 24,
                            ),
                            child: Text(
                              "Top Review",
                              overflow: TextOverflow.ellipsis,
                              textAlign:  TextAlign.start,
                              style: TextStyle(
                                
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                height: 1.00,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 20,
                            right: 24,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                  bottom: 4,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                  child: CommonImageView(
                                    imagePath:
                                        ImageConstant.imgUseravatar32X32,
                                    height: getSize(
                                      32.00,
                                    ),
                                    width: getSize(
                                      32.00,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 15,
                                  top: 4,
                                  bottom: 2,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Mary Smith",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign:  TextAlign.start,
                                      style: TextStyle(
                                        
                                        fontSize: getFontSize(
                                          13,
                                        ),
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                        height: 1.00,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 7,
                                        right: 7,
                                      ),
                                      child: Text(
                                        "@m_smith",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign:  TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            12,
                                          ),
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.24,
                                          height: 1.00,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: getHorizontalSize(
                              327.00,
                            ),
                            margin: getMargin(
                              left: 24,
                              top: 25,
                              right: 24,
                            ),
                            child: Text(
                              "We can never be certain about how well a series will nail the ending, but at least with Vikings, the fandom's faith can lean on a firmer foundation based in history and demonstrated skill as opposed to spectacle and whim",
                              maxLines: null,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                              
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                                height: 1.43,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 24,
                              top: 20,
                              right: 24,
                            ),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment:
                                  CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                RatingBar(
                  initialRating: 4,
                  minRating: 0,
                  direction: Axis.horizontal,
                  ignoreGestures: true,
                  allowHalfRating: false,
                  itemSize: getVerticalSize(
                    18.00,
                  ),
                  itemCount: 5,
                  updateOnDrag: false,
                  onRatingUpdate: (rating) {},
                  
                  ratingWidget: RatingWidget(
     full: Image.asset(ImageConstant.start),
     half: Image.asset(ImageConstant.start),
     empty:Image.asset(ImageConstant.startBorder),
   ),
                ),
              
                                
                                Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "1w ago",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign:  TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            11,
                                          ),
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.22,
                                          height: 1.00,
                                        ),
                                      ),
                                    ),
                                    HorizontalSpace(width: 20),
                                    
                                    Padding(
                                      padding: getPadding(
                                       
                                        top: 2,
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "5K likes",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign:  TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            11,
                                          ),
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.22,
                                          height: 1.00,
                                        ),
                                      ),
                                    ),
                                   HorizontalSpace(width: 20),
                                    CommonImageView(
                                      imagePath: ImageConstant
                                          .like,
                                      height: getSize(
                                        18.00,
                                      ),
                                      width: getSize(
                                        18.00,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 24,
                              top: 45,
                              right: 24,
                            ),
                            child: Text(
                              "Other reviews",
                              overflow: TextOverflow.ellipsis,
                              textAlign:  TextAlign.start,
                              style: TextStyle(
                                
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                height: 1.00,
                              ),
                            ),
                          ),
                        ),
                        ListView.separated(
                          padding: getPadding(
                            bottom: 14
                          ),
                          physics: BouncingScrollPhysics(),
                          separatorBuilder: (context,index){
                            return VerticalSpace(height: 10);
                          },
                          itemCount: 4,
                          shrinkWrap: true,
                          itemBuilder: (context,index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 24,
                                    top: 22,
                                    right: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                          bottom: 4,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              16.00,
                                            ),
                                          ),
                                          child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgUseravatar3,
                                            height: getSize(
                                              32.00,
                                            ),
                                            width: getSize(
                                              32.00,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 15,
                                          top: 3,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Elizabeth Jones",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign:  TextAlign.start,
                                              style: TextStyle(
                                                
                                                fontSize: getFontSize(
                                                  13,
                                                ),
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                                height: 1.00,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 7,
                                                right: 10,
                                              ),
                                              child: Text(
                                                "@e_jones",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign:  TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    12,
                                                  ),
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 0.24,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: getHorizontalSize(
                                      327.00,
                                    ),
                                    margin: getMargin(
                                      left: 24,
                                      top: 25,
                                      right: 24,
                                    ),
                                    child: Text(
                                      "The thrills take their time, but when they come, they come with a mighty rush.",
                                      maxLines: null,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                       
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                        height: 1.43,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 24,
                                      top: 20,
                                      right: 24,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        RatingBar(
                  initialRating: 4,
                  minRating: 0,
                  direction: Axis.horizontal,
                  ignoreGestures: true,
                  allowHalfRating: false,
                  itemSize: getVerticalSize(
                    18.00,
                  ),
                  itemCount: 5,
                  updateOnDrag: false,
                  onRatingUpdate: (rating) {},
                  
                  ratingWidget: RatingWidget(
     full: Image.asset(ImageConstant.start),
     half: Image.asset(ImageConstant.start),
     empty:Image.asset(ImageConstant.startBorder),
   ),
                ),
              
                                      
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 2,
                                                bottom: 2,
                                              ),
                                              child: Text(
                                                "12h ago",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign:  TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    11,
                                                  ),
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 0.22,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ),
                                            HorizontalSpace(width: 20),

                                            Padding(
                                              padding: getPadding(
                                             
                                                top: 2,
                                                bottom: 2,
                                              ),
                                              child: Text(
                                                "740 likes",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign:  TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    11,
                                                  ),
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 0.22,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ),
                                            HorizontalSpace(width: 20),
                                            CommonImageView(
                                              imagePath: ImageConstant
                                                  .like,
                                              height: getSize(
                                                18.00,
                                              ),
                                              width: getSize(
                                                18.00,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                        ),
                      
                      
                  
                  ],
                ),
              ),
            ),
           Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: getMargin(
                          top: 10,
                        ),
                       
                        child: InkWell(
                             onTap: (){
                                      
                                         showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: RoundedRectangleBorder(
                                    
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(0),
                                      )
                                  ),
                                  builder: (context) {
                                    return Padding(
                                  padding:    EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                                      child: Container(
    
      decoration: BoxDecoration(
        color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        
         
          Container(
            margin: getMargin(
              left: 20,
              right: 20,
              top: 20
              
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                16.00,
                              ),
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgUseravatar32X32,
                              height: getSize(
                                32.00,
                              ),
                              width: getSize(
                                32.00,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                     
                HorizontalSpace(width: 15),
                Expanded(
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.top,
                    textAlign: TextAlign.start,
                    autofocus: true,
                   
                  maxLines: null,
                  style: TextStyle(
                     fontFamily: 'SF Pro Display',

                  ),
                  decoration: InputDecoration(
                    hintText: 'Type Your review',
                    hintStyle: TextStyle(
                     fontFamily: 'SF Pro Display',
                     color: isDark?ColorConstant.gray500:ColorConstant.gray600

                  ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    filled: false,
                    contentPadding:EdgeInsets.all( 0)
                  )),
                  
                  )
                
            
            
            
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 24,
              right: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                RatingBar(
                  initialRating: 4,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemSize: getVerticalSize(
                    18.00,
                  ),
                  itemCount: 5,
                  updateOnDrag: true,
                  onRatingUpdate: (rating) {},
                  
                  ratingWidget: RatingWidget(
     full: Image.asset(ImageConstant.start),
     half: Image.asset(ImageConstant.start),
     empty:Image.asset(ImageConstant.startBorder),
   ),
                ),
              
             Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(100),

                  onTap: (){
                    Navigator.pop(context);

                  },
                  child: Icon(Icons.clear_rounded,
                  size: 20,
                  color:isDark?ColorConstant.gray500: ColorConstant.gray600,),
                ),
                HorizontalSpace(width: 15),
                InkWell(
                  borderRadius: BorderRadius.circular(100),

                  onTap: (){
                    Navigator.pop(context);

                  },
                  child:isRtl? RotatedBox(
                    quarterTurns: 2,
                    child: Image.asset(ImageConstant.send,
                    
                    height: getVerticalSize(30),
                    width: getHorizontalSize(30),
                    ),
                  ):Image.asset(ImageConstant.send,
                  height: getVerticalSize(30),
                  width: getHorizontalSize(30),
                  ),
                )
              ],
             )
             
              ],
            ),
          ),
        ],
      ),
    )
  );
                                  });
                                      },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 15,
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                  child: CommonImageView(
                                    imagePath: ImageConstant.imgUseravatar76X76,
                                    height: getSize(
                                      32.00,
                                    ),
                                    width: getSize(
                                      32.00,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 10,
                                  top: 16,
                                  right: 10,
                                  bottom: 16,
                                ),
                                child: Text(
                                  "Type review here...",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign:  TextAlign.start,
                                  style: TextStyle(
                                    color:isDark?ColorConstant.whiteA700: ColorConstant.gray600,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                    height: 1.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                 
         
          ],
        ),
      ),
    );
  }
}
