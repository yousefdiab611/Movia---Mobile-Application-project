import 'package:flutter/material.dart';

import '../core/app_export.dart';

// ignore: must_be_immutable
class CustomDropDown extends StatelessWidget {
  CustomDropDown(
      {this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.focusNode,
      this.icon,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.items,
      required this.isDark,
      this.onChanged,
      this.value});

  DropDownFontStyle? fontStyle;

  Alignment? alignment;

  double? width;
  bool isDark;

  EdgeInsetsGeometry? margin;

  FocusNode? focusNode;

  Widget? icon;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  List<String>? items;

  Function(String)? onChanged;

  Object? value;

  @override
 Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildDropDownWidget(isDark),
          )
        : _buildDropDownWidget(isDark);
  }

  _buildDropDownWidget(isDark) {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: DropdownButtonFormField(
        focusNode: focusNode,
        
       
        icon: icon,
        style: TextStyle(
          color:isDark?Colors.white: Colors.black,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w500,
        ),
        decoration: _buildDecoration(),
        items: items?.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList(),
        onChanged: (value) {
          onChanged!(value.toString());
        },
        value: value,
        itemHeight: null,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      prefixIcon: prefix,
      focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(
            color: ColorConstant.redA400,
            width: 1,
          ),
        ),
        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(
            color:ColorConstant.gray400,
            width: 1,
          ),
        ),
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(
            color:ColorConstant.gray400,
            width: 1,
          ),
        ),
      prefixIconConstraints: prefixConstraints,
      isDense: true,
      filled: false,
      
     
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      default:
        return TextStyle(
          color: ColorConstant.gray60099,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum DropDownFontStyle {
  PlusJakartaSansMedium14,
}
