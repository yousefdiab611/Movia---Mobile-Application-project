import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/home.dart';
import 'package:movia/presentation/payment_success_screen/payment_success_screen.dart';
import 'package:movia/widgets/custom_button.dart';

class PaymentFailedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
        
        body:SafeArea( 
          child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 20,
                    top: 10,
                    right: 20,
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    Home()), (Route<dynamic> route) => false);
                    },
                    child: SvgPicture.asset(
                       ImageConstant.imgClose,
                       color:isDark? ColorConstant.whiteA700:ColorConstant.black900,
                      height: getSize(
                        36.00,
                      ),
                      width: getSize(
                        36.00,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                     
                      right: 20,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgIllustration3,
                      height: getVerticalSize(
                        121.00,
                      ),
                      width: getHorizontalSize(
                        101.00,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      top: 35,
                      right: 20,
                    ),
                    child: Text(
                      "Payment Failed",
                      overflow: TextOverflow.ellipsis,
                      textAlign:  TextAlign.start,
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
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: getHorizontalSize(
                  228.00,
                ),
                margin: getMargin(
                  left: 20,
                  top: 15,
                  right: 20,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "Your payment failed, please try again or contact ",
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
                      TextSpan(
                        text: "support@movia.com",
                        style: TextStyle(
                          color: ColorConstant.redA400,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
           
            CustomButton(isDark:isDark,
              width: size.width,
              text: "Try Again",
              onTap: (){
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>PaymentSuccessScreen()),
  );
              },
              margin: getMargin(
                left: 20,
               
                right: 20,
                bottom: 20,
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
