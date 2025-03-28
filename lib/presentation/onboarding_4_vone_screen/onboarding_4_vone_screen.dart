import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/continue_with_number_screen/continue_with_number_screen.dart';
import 'package:movia/presentation/sign_up_with_email_screen/sign_up_with_email_screen.dart';
import 'package:movia/widgets/spacing.dart';

class Onboarding4VoneScreen extends StatefulWidget {
  @override
  State<Onboarding4VoneScreen> createState() => _Onboarding4VoneScreenState();
}

class _Onboarding4VoneScreenState extends State<Onboarding4VoneScreen> {
  bool phone = true;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
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
            left: 24,
            top: 10,
            right: 24,
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
            left: 24,
            top: 12,
            right: 24,
          ),
          child: Text(
            "Start with",
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
        VerticalSpace(height: 32),
        InkWell(
          onTap: () {
            setState(() {
              phone = true;
            });
              Future.delayed(Duration(milliseconds: 400), () {
                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>ContinueWithNumberScreen()),
  );
                        });
          },
          child: Container(
            padding: getPadding(all: 10),
            margin: getMargin(left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: phone ? ColorConstant.redA400 : Colors.transparent,
                border: Border.all(
                  color: phone
                      ? ColorConstant.redA400
                      : isDark
                          ? ColorConstant.gray500
                          : ColorConstant.gray600,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  ImageConstant.phone,
                  color:
                      phone ? ColorConstant.whiteA700 : ColorConstant.gray500,
                  height: getVerticalSize(34),
                  width: getHorizontalSize(34),
                ),
                HorizontalSpace(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile Number',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            color: phone
                                ? Colors.white
                                : isDark
                                    ? Colors.white
                                    : Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      Text(
                        'You can sign up/sign in with your mobile number',
                        maxLines: 2,
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            color: phone
                                ? Colors.white
                                : isDark
                                    ? Colors.white
                                    : Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: phone
                      ? Colors.white
                      : isDark
                          ? ColorConstant.gray500
                          : ColorConstant.gray600,
                )
              ],
            ),
          ),
        ),
        VerticalSpace(height: 17),
        InkWell(
          onTap: () {
            setState(() {
              phone = false;
            });
             Future.delayed(Duration(milliseconds: 400), () {
                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SignUpWithEmailScreen()),
  );
                        });
          },
          child: Container(
            padding: getPadding(all: 10),
            margin: getMargin(left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: !phone ? ColorConstant.redA400 : Colors.transparent,
                border: Border.all(
                  color: !phone
                      ? ColorConstant.redA400
                      : isDark
                          ? ColorConstant.gray500
                          : ColorConstant.gray600,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  ImageConstant.mail,
                  color:
                      !phone ? ColorConstant.whiteA700 : ColorConstant.gray500,
                  height: getVerticalSize(34),
                  width: getHorizontalSize(34),
                ),
                HorizontalSpace(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            color: !phone
                                ? Colors.white
                                : isDark
                                    ? Colors.white
                                    : Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      Text(
                        'You can sign up/sign in with your mobile number',
                        maxLines: 2,
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            color: !phone
                                ? Colors.white
                                : isDark
                                    ? Colors.white
                                    : Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: !phone
                      ? Colors.white
                      : isDark
                          ? ColorConstant.gray500
                          : ColorConstant.gray600,
                )
              ],
            ),
          ),
        ),
        VerticalSpace(height: 20)
     
     
      ],
    );
  }
}
