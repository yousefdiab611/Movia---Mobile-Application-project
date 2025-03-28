import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListposterItemWidget extends StatelessWidget {
  ListposterItemWidget();

  @override
  Widget build(BuildContext context) {
bool isRtl = context.locale==Constants.arLocal;
    return Padding(
      padding: getPadding(
        top: 12.5,
        bottom: 12.5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                7.00,
              ),
            ),
            child: CommonImageView(
              imagePath: ImageConstant.imgPoster165X109,
              height: getVerticalSize(
                165.00,
              ),
              width: getHorizontalSize(
                109.00,
              ),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    right: 10,
                  ),
                  child: Text(
                    "2h 19m",
                    overflow: TextOverflow.ellipsis,
                    textAlign:  TextAlign.start,
                    style: TextStyle(
                      color: ColorConstant.gray600,
                      fontSize: getFontSize(
                        13,
                      ),
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      height: 1.38,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                    right: 10,
                  ),
                  child: Text(
                    "Beauty and the Beast",
                    overflow: TextOverflow.ellipsis,
                    textAlign:  TextAlign.start,
                    style: TextStyle(
                      
                      fontSize: getFontSize(
                        18,
                      ),
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      height: 1.33,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Musical",
                        overflow: TextOverflow.ellipsis,
                        textAlign:  TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray600,
                          fontSize: getFontSize(
                            13,
                          ),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 1.38,
                        ),
                      ),
                      Container(
                        height: getSize(
                          4.00,
                        ),
                        width: getSize(
                          4.00,
                        ),
                        margin: getMargin(
                          left: 10,
                          top: 7,
                          bottom: 7,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray9006c,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              2.00,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                        ),
                        child: Text(
                          "Romance",
                          overflow: TextOverflow.ellipsis,
                          textAlign:  TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              13,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 1.38,
                          ),
                        ),
                      ),
                      Container(
                        height: getSize(
                          4.00,
                        ),
                        width: getSize(
                          4.00,
                        ),
                        margin: getMargin(
                          left: 10,
                          top: 7,
                          bottom: 7,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray9006c,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              2.00,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                        ),
                        child: Text(
                          "Fantasy",
                          overflow: TextOverflow.ellipsis,
                          textAlign:  TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              13,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 1.38,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    202.00,
                  ),
                  margin: getMargin(
                    top: 50,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomIconButton(
                        height: 35,
                        width: 35,
                        child: CommonImageView(
                          isRtl: isRtl,
                          svgPath: ImageConstant.imgPlay,
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          top: 7,
                          bottom: 7,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              10.00,
                            ),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 2,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgStar,
                                height: getSize(
                                  16.00,
                                ),
                                width: getSize(
                                  16.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 2,
                              ),
                              child: Text(
                                "4.0",
                                overflow: TextOverflow.ellipsis,
                                textAlign:  TextAlign.start,
                                style: TextStyle(
                                   
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 1.43,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 2,
                              ),
                              child: Text(
                                "(62K)",
                                overflow: TextOverflow.ellipsis,
                                textAlign:  TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.gray600,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
