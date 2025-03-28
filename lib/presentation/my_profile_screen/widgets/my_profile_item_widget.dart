import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/spacing.dart';

// ignore: must_be_immutable
class MyProfileItemWidget extends StatelessWidget {
  MyProfileItemWidget();

  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          top: 7.5,
          bottom: 7.5,
        ),
        decoration: BoxDecoration(
          color: ColorConstant.gray200,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              7.00,
            ),
          ),
        ),
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CommonImageView(
                    svgPath: ImageConstant.imgLocation,
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                  ),
                  HorizontalSpace(width: 15),
                  Padding(
                    padding: getPadding(
                    
                      top: 5,
                      bottom: 4,
                    ),
                    child: Text(
                      "Bookmark List",
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
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 157,
                top: 15,
                right: 15,
                bottom: 13,
              ),
              child: Text(
                "16",
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
    );
  }
}
