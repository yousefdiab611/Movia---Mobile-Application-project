import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/payment_failed_screen/payment_failed_screen.dart';
import 'package:movia/widgets/custom_button.dart';

class OrderSummaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = context.locale == Constants.arLocal;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: getVerticalSize(
            5.00,
          ),
          width: getHorizontalSize(
            80.00,
          ),
          margin: getMargin(
            left: 30,
            top: 10,
            right: 30,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.gray400,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                2.50,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 30,
            top: 12,
            right: 30,
          ),
          child: Text(
            "Order Summary",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
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
            left: 30,
            top: 32,
            right: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: getPadding(
                  top: 5,
                  bottom: 4,
                ),
                child: Text(
                  "Plan",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
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
              CustomButton(isDark:isDark,
                width: 77,
                text: "Premium",
                variant: ButtonVariant.FillYellow800,
                padding: ButtonPadding.PaddingAll7,
                fontStyle: ButtonFontStyle.SFProDisplayMedium11,
                prefixWidget: Container(
                  margin: getMargin(
                    right:isRtl?0: 5,
                    left:isRtl?5: 0,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgLightbulb14X14,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            left: 30,
            top: 23,
            right: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: getPadding(
                  bottom: 1,
                ),
                child: Text(
                  "Duration",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
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
              Padding(
                padding: getPadding(
                  top: 1,
                ),
                child: Text(
                  "1 Year",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
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
        Container(
          height: getVerticalSize(
            1.00,
          ),
          width: getHorizontalSize(
            315.00,
          ),
          margin: getMargin(
            left: 30,
            top: 22,
            right: 30,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.gray50087,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 30,
            top: 20,
            right: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: getPadding(
                  top: 3,
                  bottom: 2,
                ),
                child: Text(
                  "Price",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
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
              Text(
                "${Constants.currency} 89.99",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: getFontSize(
                    14,
                  ),
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  height: 1.00,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            left: 30,
            top: 20,
            right: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: getPadding(
                  top: 3,
                  bottom: 2,
                ),
                child: Text(
                  "Tax",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
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
              Text(
                "${Constants.currency} 8.9",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: getFontSize(
                    14,
                  ),
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  height: 1.00,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            left: 30,
            top: 20,
            right: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: getPadding(
                  top: 3,
                  bottom: 2,
                ),
                child: Text(
                  "Discount",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
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
              Text(
                "-${Constants.currency} 1",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: ColorConstant.redA400,
                  fontSize: getFontSize(
                    14,
                  ),
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  height: 1.00,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: getVerticalSize(
            1.00,
          ),
          width: getHorizontalSize(
            315.00,
          ),
          margin: getMargin(
            left: 30,
            top: 20,
            right: 30,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.gray50087,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 30,
            top: 20,
            right: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: getPadding(
                  top: 3,
                  bottom: 2,
                ),
                child: Text(
                  "Total",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
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
              Text(
                "${Constants.currency} 97.98",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: getFontSize(
                    14,
                  ),
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  height: 1.00,
                ),
              ),
            ],
          ),
        ),
        CustomButton(isDark:isDark,
          width: size.width,
          text: "Proceed to Checkout",
          onTap: (){
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>PaymentFailedScreen()),
  );
          },
          margin: getMargin(
            left: 30,
            top: 40,
            right: 30,
            bottom: 10,
          ),
        ),
      ],
    );
  }
}
