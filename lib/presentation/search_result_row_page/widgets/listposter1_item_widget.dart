import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listposter1ItemWidget extends StatelessWidget {
  Listposter1ItemWidget();

  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: Alignment.center,
      child: Padding(
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
                imagePath: ImageConstant.imgPoster6,
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
                      top: 2,
                      right: 10,
                    ),
                    child: Text(
                      "4 seasons",
                      overflow: TextOverflow.ellipsis,
                      textAlign:  TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.gray600,
                        fontSize: getFontSize(
                          13,
                        ),
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 1.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                      right: 10,
                    ),
                    child: Text(
                      "Black Lightning",
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
                  Padding(
                    padding: getPadding(
                      top: 12,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Action",
                          overflow: TextOverflow.ellipsis,
                          textAlign:  TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              13,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 1.00,
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
                            top: 4,
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
                            "Drama",
                            overflow: TextOverflow.ellipsis,
                            textAlign:  TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray600,
                              fontSize: getFontSize(
                                13,
                              ),
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              height: 1.00,
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
                            top: 4,
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
                            top: 1,
                          ),
                          child: Text(
                            "Super Hero",
                            overflow: TextOverflow.ellipsis,
                            textAlign:  TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray600,
                              fontSize: getFontSize(
                                13,
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
                            imagePath: ImageConstant.playButton,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                  top: 3,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "4.1",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign:  TextAlign.start,
                                  style: TextStyle(
                                    
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                    height: 1.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 2,
                                  top: 4,
                                  right: 1,
                                ),
                                child: Text(
                                  "(57K)",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign:  TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray600,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
