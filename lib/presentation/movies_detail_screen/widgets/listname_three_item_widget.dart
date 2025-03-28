import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

// ignore: must_be_immutable
class ListnameThreeItemWidget extends StatelessWidget {
  ListnameThreeItemWidget();

  @override
  Widget build(BuildContext context) {

    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 25,
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
                  "Cruella",
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
              Container(
                width: getHorizontalSize(
                  115.00,
                ),
                margin: getMargin(
                  top: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 3,
                      ),
                      child: Text(
                        "2h 14m",
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
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            9.00,
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
                                14.00,
                              ),
                              width: getSize(
                                14.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 2,
                              top: 2,
                              bottom: 3,
                            ),
                            child: Text(
                              "4.2",
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
            ],
          ),
        ),
      ),
    );
  }
}
