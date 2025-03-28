import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movia/core/app_export.dart';
  

class ReviewsSendEditReviewsScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body:SafeArea( child: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  padding: getPadding(
                    bottom: 10,
                  ),
                  child: Container(
                    height: size.height,
                    width: size.width,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: getPadding(
                              top: 52,
                              bottom: 52,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                            imagePath: ImageConstant
                                                .imgUseravatar32X32,
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
                                        color: ColorConstant.bluegray900,
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
                                        RatingBar.builder(
                                          initialRating: 0,
                                          minRating: 0,
                                          direction: Axis.horizontal,
                                          allowHalfRating: false,
                                          itemSize: getVerticalSize(
                                            18.00,
                                          ),
                                          itemCount: 5,
                                          updateOnDrag: true,
                                          onRatingUpdate: (rating) {},
                                          itemBuilder: (context, _) {
                                            return Icon(
                                              Icons.star,
                                            );
                                          },
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
                                            Padding(
                                              padding: getPadding(
                                                left: 20,
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
                                            Padding(
                                              padding: getPadding(
                                                left: 32,
                                              ),
                                              child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgFavorite24X24,
                                                height: getSize(
                                                  18.00,
                                                ),
                                                width: getSize(
                                                  18.00,
                                                ),
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
                                Padding(
                                  padding: getPadding(
                                    left: 24,
                                    top: 22,
                                    right: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        color: ColorConstant.bluegray900,
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
                                        RatingBar.builder(
                                          initialRating: 0,
                                          minRating: 0,
                                          direction: Axis.horizontal,
                                          allowHalfRating: false,
                                          itemSize: getVerticalSize(
                                            18.00,
                                          ),
                                          itemCount: 5,
                                          updateOnDrag: true,
                                          onRatingUpdate: (rating) {},
                                          itemBuilder: (context, _) {
                                            return Icon(
                                              Icons.star,
                                            );
                                          },
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
                                            Padding(
                                              padding: getPadding(
                                                left: 20,
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
                                            Padding(
                                              padding: getPadding(
                                                left: 32,
                                              ),
                                              child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgFavorite24X24,
                                                height: getSize(
                                                  18.00,
                                                ),
                                                width: getSize(
                                                  18.00,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 24,
                                    top: 30,
                                    right: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                                ImageConstant.imgUseravatar1,
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
                                          top: 2,
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
                                              "Barbara Brown",
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
                                                "@b_brown",
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
                                      top: 24,
                                      right: 24,
                                    ),
                                    child: Text(
                                      "Season 6 had an entire fanbase on its shoulders, and it delivers the final episodes with care, thought and precision.",
                                      maxLines: null,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray900,
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
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 0,
                                          minRating: 0,
                                          direction: Axis.horizontal,
                                          allowHalfRating: false,
                                          itemSize: getVerticalSize(
                                            18.00,
                                          ),
                                          itemCount: 5,
                                          updateOnDrag: true,
                                          onRatingUpdate: (rating) {},
                                          itemBuilder: (context, _) {
                                            return Icon(
                                              Icons.star,
                                            );
                                          },
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
                                                "2d ago",
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
                                            Padding(
                                              padding: getPadding(
                                                left: 20,
                                                top: 2,
                                                bottom: 2,
                                              ),
                                              child: Text(
                                                "981 likes",
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
                                            Padding(
                                              padding: getPadding(
                                                left: 32,
                                              ),
                                              child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgFavorite24X24,
                                                height: getSize(
                                                  18.00,
                                                ),
                                                width: getSize(
                                                  18.00,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 24,
                              top: 54,
                              right: 24,
                              bottom: 54,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CommonImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                  height: getSize(
                                    36.00,
                                  ),
                                  width: getSize(
                                    36.00,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 60,
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
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorConstant.gray900Cc,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    margin: getMargin(
                                      top: 341,
                                      bottom: 331,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray200,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 10,
                                            bottom: 98,
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                16.00,
                                              ),
                                            ),
                                            child: CommonImageView(
                                              imagePath: ImageConstant
                                                  .imgUseravatar76X76,
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
                                        Container(
                                          width: getHorizontalSize(
                                            298.00,
                                          ),
                                          margin: getMargin(
                                            top: 15,
                                            bottom: 70,
                                          ),
                                          child: Text(
                                            "Alexander does an incredible job of portraying Bjorn's torment over his choices and his struggle in trying to make the right decision.",
                                            maxLines: null,
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              color: ColorConstant.bluegray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: size.width,
                  margin: getMargin(
                    bottom: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 33,
                          top: 17,
                          bottom: 15,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgMusic,
                          height: getVerticalSize(
                            11.00,
                          ),
                          width: getHorizontalSize(
                            28.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 17,
                          right: 14,
                          bottom: 15,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgRightside,
                          height: getVerticalSize(
                            11.00,
                          ),
                          width: getHorizontalSize(
                            66.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
       
      ),
         
    );
  }

   
}
