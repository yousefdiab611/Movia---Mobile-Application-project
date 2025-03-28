import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:movia/core/app_export.dart';

// ignore: must_be_immutable
class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged,
  required this.isDark});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;
  bool isDark;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {

    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(20),
        width: getHorizontalSize(40),
        toggleSize: 14,
        borderRadius: getHorizontalSize(
          10.00,
        ),
        activeColor: ColorConstant.redA400,
        activeToggleColor: ColorConstant.whiteA700,
        inactiveColor:isDark?ColorConstant.gray600: ColorConstant.gray400,
        inactiveToggleColor: ColorConstant.whiteA700,
        onToggle: (value) {},
      ),
    );
  }
}
