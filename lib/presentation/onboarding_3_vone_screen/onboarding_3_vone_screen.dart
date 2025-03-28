import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

class Onboarding3VoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: getPadding(
              left: 31,
              top: 20,
              right: 31,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  10.00,
                ),
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgReview1,
                height: getVerticalSize(
                  144.00,
                ),
                width: getHorizontalSize(
                  256.00,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: getPadding(
              left: 16,
              top: 12,
              right: 16,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  10.00,
                ),
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgReview2,
                height: getVerticalSize(
                  118.00,
                ),
                width: getHorizontalSize(
                  255.00,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: getPadding(
              left: 32,
              top: 11,
              right: 32,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  10.00,
                ),
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgReview3,
                height: getVerticalSize(
                  131.00,
                ),
                width: getHorizontalSize(
                  255.00,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: getVerticalSize(310),
            width: double.infinity,
            margin: getMargin(
              top: 19,
            ),
            decoration: BoxDecoration(
              color:
                  isDark ? ColorConstant.darkContainer : ColorConstant.gray50,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  getHorizontalSize(
                    15.00,
                  ),
                ),
                topRight: Radius.circular(
                  getHorizontalSize(
                    15.00,
                  ),
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    215.00,
                  ),
                  margin: getMargin(
                    left: 25,
                    top: 26,
                    right: 25,
                  ),
                  child: Text(
                    "Read reviews and submit your own review",
                    maxLines: null,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: getFontSize(
                        20,
                      ),
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700,
                      height: 1.40,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: getHorizontalSize(
                      325.00,
                    ),
                    margin: getMargin(
                      left: 25,
                      top: 30,
                      right: 25,
                    ),
                    child: Text(
                      "See reviews of movies & series and interact with other users",
                      maxLines: null,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: ColorConstant.gray600,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 1.38,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
