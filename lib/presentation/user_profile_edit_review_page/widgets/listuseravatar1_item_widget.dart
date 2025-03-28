import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movia/core/app_export.dart';

// ignore: must_be_immutable
class Listuseravatar1ItemWidget extends StatelessWidget {
  Listuseravatar1ItemWidget();

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: getMargin(
        top: 10.0,
        bottom: 10.0,
      ),
      decoration: BoxDecoration(
        color: ColorConstant.gray200,
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
          Padding(
            padding: getPadding(
              left: 10,
              top: 10,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    top: 4,
                    bottom: 2,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
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
                      Padding(
                        padding: getPadding(
                          left: 15,
                          top: 1,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
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
                Padding(
                  padding: getPadding(
                    top: 2,
                    bottom: 25,
                  ),
                  child: Text(
                    "Cruella",
                    overflow: TextOverflow.ellipsis,
                    textAlign:  TextAlign.start,
                    style: TextStyle(
                      color: ColorConstant.gray600,
                      fontSize: getFontSize(
                        12,
                      ),
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.24,
                      height: 1.00,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: getHorizontalSize(
              307.00,
            ),
            margin: getMargin(
              left: 10,
              top: 24,
              right: 10,
            ),
            child: Text(
              "Cruella is often fun to watch, but its cavalier reversal of its core character cheapens the very idea of a corrective narrative. It takes a quintessential villain and nuances her character into oblivion.",
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 2,
                      ),
                      child: Text(
                        "21h ago",
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
                        "2K likes",
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
                        svgPath: ImageConstant.imgFavorite24X24,
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
        ],
      ),
    );
  }
}
