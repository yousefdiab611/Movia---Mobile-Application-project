import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

// ignore: must_be_immutable
class SettingsItemWidget extends StatelessWidget {
  SettingsItemWidget();

  @override
  Widget build(BuildContext context) {

    return Container(
    
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
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                CommonImageView(
                  svgPath: ImageConstant.imgIconGray600,
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 15,
                    top: 6,
                    bottom: 2,
                  ),
                  child: Text(
                    "Change language",
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
              left: 111,
              top: 17,
              right: 15,
              bottom: 12,
            ),
            child: Text(
              "English",
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
    );
  }
}
