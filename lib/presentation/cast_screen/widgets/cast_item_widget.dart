import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

// ignore: must_be_immutable
class CastItemWidget extends StatelessWidget {
  CastItemWidget();

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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                bottom: 18,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        7.00,
                      ),
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imgImg33,
                      height: getVerticalSize(
                        64.00,
                      ),
                      width: getHorizontalSize(
                        62.00,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 1,
                        top: 8,
                        right: 1,
                      ),
                      child: Text(
                        "Emily Blunt",
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
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          7.00,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgImg34,
                        height: getSize(
                          64.00,
                        ),
                        width: getSize(
                          64.00,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      41.00,
                    ),
                    margin: getMargin(
                      left: 11,
                      top: 9,
                      right: 10,
                    ),
                    child: Text(
                      "Cillian Murphy",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorConstant.gray600,
                        fontSize: getFontSize(
                          12,
                        ),
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.24,
                        height: 1.50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 24,
                bottom: 4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        7.00,
                      ),
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imgImg35,
                      height: getSize(
                        64.00,
                      ),
                      width: getSize(
                        64.00,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        57.00,
                      ),
                      margin: getMargin(
                        left: 3,
                        top: 9,
                        right: 3,
                      ),
                      child: Text(
                        "Millicent Simmonds",
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.gray600,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.24,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 24,
                bottom: 4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        7.00,
                      ),
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imgImg64X62,
                      height: getVerticalSize(
                        64.00,
                      ),
                      width: getHorizontalSize(
                        62.00,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        56.00,
                      ),
                      margin: getMargin(
                        left: 3,
                        top: 9,
                        right: 2,
                      ),
                      child: Text(
                        "S. Pereira-Olson",
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.gray600,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.24,
                          height: 1.50,
                        ),
                      ),
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
