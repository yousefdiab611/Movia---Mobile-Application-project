import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/onboarding_1_vone_screen/onboarding_1_vone_screen.dart';
import 'package:movia/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class MyProfileLogoutDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Dialog(
      
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
         
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              7.00,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                left: 47,
                top: 20,
                right: 47,
              ),
              child: Text(
                "Logout",
                overflow: TextOverflow.ellipsis,
                textAlign:  TextAlign.start,
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
                left: 47,
                top: 14,
                right: 47,
              ),
              child: Text(
                "Are you sure you want to logout ?",
                overflow: TextOverflow.ellipsis,
                textAlign:  TextAlign.start,
                style: TextStyle(
                  color: ColorConstant.gray600,
                  fontSize: getFontSize(
                    14,
                  ),
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  height: 1.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 47,
                top: 32,
                right: 47,
                bottom: 18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomButton(isDark:isDark,
                    width: 100,
                    text: "Cancel",
                    onTap: (){
                      Navigator.pop(context);
                    },
                    variant: ButtonVariant.FillWhiteA700,
                    padding: ButtonPadding.PaddingAll7,
                    fontStyle: ButtonFontStyle.SFProDisplayRegular13Gray900,
                  ),
                  CustomButton(isDark:isDark,
                    width: 100,
                    text: "Logout Now",
                    onTap: (){
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    Onboarding1VoneScreen()), (Route<dynamic> route) => false);
                    },
                    padding: ButtonPadding.PaddingAll7,
                    fontStyle: ButtonFontStyle.SFProDisplayRegular13,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
