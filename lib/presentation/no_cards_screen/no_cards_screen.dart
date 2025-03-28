import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/payment_methods_screen/payment_methods_screen.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/custom_button.dart';

class NoCardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 20,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [BkBtn()],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: getPadding(
                      left: 24,
                      right: 24,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgIllustration1,
                      height: getVerticalSize(
                        121.00,
                      ),
                      width: getHorizontalSize(
                        101.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 33,
                      right: 24,
                    ),
                    child: Text(
                      "No Cards",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          24,
                        ),
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w700,
                        height: 1.00,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      261.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 15,
                      right: 24,
                    ),
                    child: Text(
                      "There is no card to pay the plan, you can add a new card by pressing the Add Cards button",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorConstant.gray600,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 1.43,
                      ),
                    ),
                  ),
                ],
              ),
              CustomButton(
                isDark: isDark,
                width: 327,
                text: "Add Cards",
                margin: getMargin(
                  left: 24,
                  right: 24,
                  bottom: 20,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentMethodsScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
