import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listposter3ItemWidget extends StatelessWidget {
  Listposter3ItemWidget();

  @override
  Widget build(BuildContext context) {
bool isRtl = context.locale==Constants.arLocal;
    return Padding(
      padding: getPadding(
        top: 16.0,
        bottom: 16.0,
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
              imagePath: ImageConstant.imgPoster17,
              height: getVerticalSize(
                84.00,
              ),
              width: getHorizontalSize(
                150.00,
              ),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 8,
              bottom: 6,
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
                    "Episode 1",
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
                    top: 19,
                  ),
                  child: Text(
                    "Rites of Passage",
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
                    top: 5,
                    right: 10,
                  ),
                  child: Text(
                    "48 min",
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
              ],
            ),
          ),
          CustomIconButton(
            height: 30,
            width: 30,
            margin: getMargin(
              left: 48,
              top: 27,
              bottom: 27,
            ),
            shape: IconButtonShape.CircleBorder15,
            child: CommonImageView(
               isRtl: isRtl,
              svgPath: ImageConstant.imgPlay,
            ),
          ),
        ],
      ),
    );
  }
}
