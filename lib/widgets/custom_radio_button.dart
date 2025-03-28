import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/spacing.dart';

// ignore: must_be_immutable
class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {this.shape,
      this.padding,
      this.fontStyle,
      this.margin,
      this.onChange,
      this.iconSize,
      this.value,
      this.borderColor,
      this.groupValue,
      this.text});

  RadioShape? shape;

  RadioPadding? padding;

  RadioFontStyle? fontStyle;
  Color? borderColor;

  EdgeInsetsGeometry? margin;

  Function(bool)? onChange;

  double? iconSize;

  bool? value;

  String? groupValue;

  String? text;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: () {
          onChange!(value!);
        },
        child: Row(
          children: [
            SizedBox(
              height: getHorizontalSize(iconSize ?? 0),
              width: getHorizontalSize(iconSize ?? 0),
              child: Checkbox(
                activeColor: ColorConstant.redA400,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: BorderSide(
                    color:borderColor?? ColorConstant.whiteA700
                  ),

                ),
                side: BorderSide(color:borderColor?? ColorConstant.whiteA700),
                value: value ?? false,
              
                onChanged: (value) {
                  onChange!(value!);
                },
              ),
            ),
            HorizontalSpace(width: 12),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
          ],
        ),
      ),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case RadioFontStyle.SFProDisplayMedium16Gray900:
        return TextStyle(
          color: ColorConstant.gray600,
          
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF Pro Display',
       
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        );

    }
  }
}

enum RadioShape {
  CircleBorder10,
}
enum RadioPadding {
  PaddingT2,
}
enum RadioFontStyle {
  SFProDisplayMedium16,
  SFProDisplayMedium16Gray900,
}
