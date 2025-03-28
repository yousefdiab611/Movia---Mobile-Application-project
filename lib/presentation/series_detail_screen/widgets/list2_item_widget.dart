import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

// ignore: must_be_immutable
class List2ItemWidget extends StatelessWidget {
  List2ItemWidget();

  @override
  Widget build(BuildContext context) {

    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 20,
            bottom: 4,
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
                    imagePath: ImageConstant.imgImg37,
                    height: getSize(
                      60.00,
                    ),
                    width: getSize(
                      60.00,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  42.00,
                ),
                margin: getMargin(
                  left: 8,
                  top: 9,
                  right: 8,
                ),
                child: Text(
                  "Michael Hirst",
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
      ),
    );
  }
}
