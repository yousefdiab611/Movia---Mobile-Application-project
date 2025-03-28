import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      required this.isDark,
      this.prefixWidget,
      this.suffixWidget,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;
  bool isDark;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {

    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
      border: _setBorder(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case ButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      default:
        return getPadding(
          all: 15,
        );
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.FillYellow800:
        return Border.all(color: Colors.transparent);
      case ButtonVariant.FillWhiteA700:
        return Border.all(color: Colors.transparent);
      case ButtonVariant.FillRed100:
        return Border.all(color: Colors.transparent);
      case ButtonVariant.FillGray200:
        return Border.all(color: Colors.transparent);
        case ButtonVariant.RedA400Border:
        return Border.all(color: ColorConstant.redA400);
      default:
        return Border.all(color: Colors.transparent);
    }
  }
  _setColor() {
    switch (variant) {
      case ButtonVariant.FillYellow800:
        return ColorConstant.yellow800;
      case ButtonVariant.FillWhiteA700:
        return Colors.transparent;
      case ButtonVariant.FillRed100:
        return ColorConstant.red100;
      case ButtonVariant.FillGray200:
        return isDark?ColorConstant.darkContainer: ColorConstant.gray200;
        case ButtonVariant.RedA400Border:
        return Colors.transparent;
      default:
        return ColorConstant.redA400;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CustomBorderTL7:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              7.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              7.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
        );
      case ButtonShape.CustomBorderLR7:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              7.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              7.00,
            ),
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.SFProDisplayRegular13:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.SFProDisplayMedium11:
        return TextStyle(
        
          fontSize: getFontSize(
            11,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.SFProDisplayRegular13Gray900:
        return TextStyle(
          
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.SFProDisplayMedium14RedA400:
        return TextStyle(
          color: ColorConstant.redA400,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder7,
  CustomBorderTL7,
  CustomBorderLR7,
}
enum ButtonPadding {
  PaddingAll15,
  PaddingAll11,
  PaddingAll7,
}
enum ButtonVariant {
  FillRedA400,
  FillYellow800,
  FillWhiteA700,
  RedA400Border,
  FillRed100,
  FillGray200,
}
enum ButtonFontStyle {
  SFProDisplayMedium14,
  SFProDisplayRegular13,
  SFProDisplayMedium11,
  SFProDisplayRegular13Gray900,
  SFProDisplayMedium14RedA400,
}
