import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

// ignore: must_be_immutable
class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {

    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      default:
        return getPadding(
          all: 5,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.OutlineGray200:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillGray200b2:
        return ColorConstant.gray200B2;
      case IconButtonVariant.FillBluegray900b2:
        return ColorConstant.bluegray900B2;
      case IconButtonVariant.FillYellow900:
        return ColorConstant.yellow900;
      case IconButtonVariant.FillRed700:
        return ColorConstant.red700;
      case IconButtonVariant.FillGreen800:
        return ColorConstant.green800;
      case IconButtonVariant.FillBlue800:
        return ColorConstant.blue800;
      case IconButtonVariant.FillGray200:
        return ColorConstant.gray200;
      case IconButtonVariant.FillLightblue900:
        return ColorConstant.lightBlue900;
      default:
        return ColorConstant.redA400;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineGray200:
        return Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillRedA400:
      case IconButtonVariant.FillGray200b2:
      case IconButtonVariant.FillBluegray900b2:
      case IconButtonVariant.FillYellow900:
      case IconButtonVariant.FillRed700:
      case IconButtonVariant.FillGreen800:
      case IconButtonVariant.FillBlue800:
      case IconButtonVariant.FillGray200:
      case IconButtonVariant.FillLightblue900:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder22:
        return BorderRadius.circular(
          getHorizontalSize(
            22.50,
          ),
        );
      case IconButtonShape.CircleBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      case IconButtonShape.CircleBorder27:
        return BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        );
      case IconButtonShape.RoundedBorder7:
        return BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            17.50,
          ),
        );
    }
  }
}

enum IconButtonShape {
  RoundedBorder17,
  RoundedBorder22,
  CircleBorder15,
  CircleBorder27,
  RoundedBorder7,
}
enum IconButtonPadding {
  PaddingAll5,
  PaddingAll8,
}
enum IconButtonVariant {
  FillRedA400,
  OutlineGray200,
  FillGray200b2,
  FillBluegray900b2,
  FillYellow900,
  FillRed700,
  FillGreen800,
  FillBlue800,
  FillGray200,
  FillLightblue900,
}
