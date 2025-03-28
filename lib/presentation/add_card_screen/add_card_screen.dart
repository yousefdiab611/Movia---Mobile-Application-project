import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:movia/widgets/custom_text_form_field.dart';

import '../../widgets/custom_radio_button.dart';

class AddCardScreen extends StatefulWidget {
  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  bool checkBoxVal = false;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
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
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 24,
                top: 20,
                right: 24,
              ),
              child: Text(
                "Add Card",
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
          ),
          Padding(
            padding: getPadding(
              left: 24,
              top: 38,
              right: 24,
            ),
            child: Text(
              "Card Number",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: getFontSize(
                  13,
                ),
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 1.00,
              ),
            ),
          ),
          CustomTextFormField(
            isDark: isDark,
            width: size.width,
            focusNode: FocusNode(),
            hintText: "4536   0001   2345   6789",
            margin: getMargin(
              left: 24,
              top: 5,
              right: 24,
            ),
            alignment: Alignment.center,
            prefix: Container(
              margin: getMargin(
                all: 10,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgMenu3,
              ),
            ),
            prefixConstraints: BoxConstraints(
              minWidth: getSize(
                24.00,
              ),
              minHeight: getSize(
                24.00,
              ),
            ),
            suffix: Container(
              margin: getMargin(
                left: 30,
                top: 10,
                right: 10,
                bottom: 10,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgMenu4,
              ),
            ),
            suffixConstraints: BoxConstraints(
              minWidth: getHorizontalSize(
                24.00,
              ),
              minHeight: getVerticalSize(
                24.00,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 24,
                top: 25,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 4,
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
                            "Expire Date",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: getFontSize(
                                13,
                              ),
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              height: 1.00,
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          isDark: isDark,
                          width: 153,
                          focusNode: FocusNode(),
                          hintText: "03/25",
                          margin: getMargin(
                            top: 5,
                          ),
                          padding: TextFormFieldPadding.PaddingT16,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
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
                            "CVV",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: getFontSize(
                                13,
                              ),
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              height: 1.00,
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          isDark: isDark,
                          width: 153,
                          focusNode: FocusNode(),
                          hintText: "3972",
                          margin: getMargin(
                            top: 5,
                          ),
                          textInputAction: TextInputAction.done,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: getPadding(
                top: 10,
              ),
              child: CustomRadioButton(
                text: "Set as Default",
                iconSize: 20,
                value: checkBoxVal,
                borderColor: ColorConstant.redA400,
                shape: RadioShape.CircleBorder10,
                fontStyle: RadioFontStyle.SFProDisplayMedium16Gray900,
                margin: getMargin(
                  left: 20,
                  top: 21,
                  right: 20,
                  bottom: 21,
                ),
                onChange: (value) {
                  setState(() {
                    checkBoxVal = !checkBoxVal;
                  });
                },
              )),
          CustomButton(
            isDark: isDark,
            width: size.width,
            text: "Add Card",
            margin: getMargin(
              left: 24,
              top: 25,
              right: 24,
              bottom: 10,
            ),
            onTap: () {
              Navigator.pop(context);
            },
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
