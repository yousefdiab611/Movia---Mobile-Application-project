import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/data/subscription.dart';
import 'package:movia/widgets/spacing.dart';

// ignore: must_be_immutable
class ListtelevisionItemWidget extends StatefulWidget {
  int index;
  ListtelevisionItemWidget({required this.index});

  @override
  State<ListtelevisionItemWidget> createState() => _ListtelevisionItemWidgetState();
}

class _ListtelevisionItemWidgetState extends State<ListtelevisionItemWidget> {
  
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: getPadding(
              left: 27,
              top: 19,
              right: 27,
            ),
            child: SvgPicture.asset(
             ImageConstant.imgTelevision,
             color: subscriptionList[widget.index].color,
              height: getSize(
                36.00,
              ),
              width: getSize(
                36.00,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: getPadding(
              left: 27,
              top: 16,
              right: 27,
            ),
            child: Text(
              "Premium",
              overflow: TextOverflow.ellipsis,
              textAlign:  TextAlign.start,
              style: TextStyle(
                
                fontSize: getFontSize(
                  20,
                ),
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w700,
                height: 1.00,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: getPadding(
              left: 27,
              top: 7,
              right: 27,
            ),
            child: Text(
              "${Constants.currency} ${subscriptionList[widget.index].cost} /"+'${subscriptionList[widget.index].isMonthly?'month':'year'}',
              overflow: TextOverflow.ellipsis,
              textAlign:  TextAlign.start,
              style: TextStyle(
                color: ColorConstant.gray600,
                fontSize: getFontSize(
                  14,
                ),
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
                height: 1.00,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 27,
            top: 20,
            right: 27,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: getPadding(
                  top: 6,
                  bottom: 6,
                ),
                child: SvgPicture.asset(
                ImageConstant.imgCheckmark30X30,
                color: subscriptionList[widget.index].color,
                  height: getSize(
                    30.00,
                  ),
                  width: getSize(
                    30.00,
                  ),
                ),
              ),
              HorizontalSpace(width: 15),
              Padding(
                padding: getPadding(
                
                  top: 4,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "High quality",
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
                    Padding(
                      padding: getPadding(
                        top: 5
                      ),
                      child: Text(
                        "Watch videos in 4K quality",
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
        Padding(
          padding: getPadding(
            left: 27,
            top: 15,
            right: 27,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
            SvgPicture.asset(
                ImageConstant.imgCheckmark30X30,
                color: subscriptionList[widget.index].color,
                  height: getSize(
                    30.00,
                  ),
                  width: getSize(
                    30.00,
                  ),
                ),
             HorizontalSpace(width: 15),
              Padding(
                padding: getPadding(
                
                  top: 3,
                  bottom: 3,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Watch offline",
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
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        "Download videos and watch later",
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
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: getPadding(
              left: 27,
              top: 15,
              right: 27,
              bottom: 19,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    top: 6,
                    bottom: 6,
                  ),
                  child: SvgPicture.asset(
                ImageConstant.imgCheckmark30X30,
                color: subscriptionList[widget.index].color,
                  height: getSize(
                    30.00,
                  ),
                  width: getSize(
                    30.00,
                  ),
                ),
                ),
                HorizontalSpace(width: 15),
                Padding(
                  padding: getPadding(
                   
                    top: 4,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Ad-free streaming",
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
                      Padding(
                        padding: getPadding(
                          top: 5,
                        ),
                        child: Text(
                          "Enjoy watching videos without ad-free",
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
        ),
      ],
    );
  }
}
