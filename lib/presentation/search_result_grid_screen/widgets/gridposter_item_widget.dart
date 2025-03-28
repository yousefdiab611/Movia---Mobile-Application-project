import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/spacing.dart';

// ignore: must_be_immutable
class GridposterItemWidget extends StatelessWidget {
  GridposterItemWidget();

  @override
  Widget build(BuildContext context) {

    return Container(
      width: getHorizontalSize(153),
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
              imagePath: ImageConstant.imgPoster6,
              height: getVerticalSize(
                232.00,
              ),
              width: getHorizontalSize(
                153.00,
              ),
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 8,
             
            ),
            child: Text(
              "Black Lightning",
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
          Padding(
            padding: getPadding(
              top: 6,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "4 seasons",
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        9.00,
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CommonImageView(
                        svgPath: ImageConstant.imgStar,
                        height: getSize(
                          14.00,
                        ),
                        width: getSize(
                          14.00,
                        ),
                      ),
                     HorizontalSpace(width: 2),
                      Text(
                        "4.1",
                        overflow: TextOverflow.ellipsis,
                        textAlign:  TextAlign.start,
                        style: TextStyle(
                          
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.24,
                          height: 1.00,
                        ),
                      ),
                     HorizontalSpace(width: 2),
                      Text(
                        "(63K)",
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
