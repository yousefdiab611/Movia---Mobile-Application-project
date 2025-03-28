import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/home.dart';
import 'package:movia/widgets/custom_button.dart';

class ResetPasswordPasswordChangedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
        
        body:SafeArea( child: Container(
          width: size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            
           Column(
             children: [
               Padding(
                 padding: getPadding(
                   left: 24,
                   top: 20,
                   right: 24,
                 ),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     InkWell(
                      onTap: (){
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    Home()), (Route<dynamic> route) => false);
                      },
                       child: CommonImageView(
                         svgPath: ImageConstant.imgClose,
                         height: getSize(
                           36.00,
                         ),
                         width: getSize(
                           36.00,
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 150,
                      right: 24,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgIllustration,
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
                      top: 36,
                      right: 24,
                    ),
                    child: Text(
                      "Your password has changed",
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
                  Container(
                    width: getHorizontalSize(
                      251.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 15,
                      right: 24,
                    ),
                    child: Text(
                      "From now on, you can login to your account with new password",
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
           
          CustomButton(isDark:isDark,
                width: size.width,
                text: "Back to Movia",
                onTap: (){
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    Home()), (Route<dynamic> route) => false);
                },
                margin: getMargin(
                  left: 24,
               
                  right: 24,
                  bottom: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
