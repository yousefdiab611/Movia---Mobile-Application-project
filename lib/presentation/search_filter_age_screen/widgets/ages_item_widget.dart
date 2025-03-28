import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/data/ages.dart';
import 'package:movia/widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class AgesItemWidget extends StatefulWidget {
  int index;
  AgesItemWidget({required this.index});

  @override
  State<AgesItemWidget> createState() => _AgesItemWidgetState();
}

class _AgesItemWidgetState extends State<AgesItemWidget> {
  bool checkBoxVal = false;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return InkWell(
      borderRadius: BorderRadius.circular(7),
      onTap: () {
        setState(() {
          checkBoxVal = !checkBoxVal;
        });
      },
      child: Container(
        width: getHorizontalSize(
          152.00,
        ),
        height: getVerticalSize(62),
        decoration: BoxDecoration(
          color: isDark ? ColorConstant.darkContainer : ColorConstant.gray200,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              7.00,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRadioButton(
              text: agesList[widget.index],
              iconSize: 20,
              value: checkBoxVal,
              borderColor: isDark ? Colors.white : Colors.black,
              fontStyle: RadioFontStyle.SFProDisplayMedium16Gray900,
              onChange: (value) {
                setState(() {
                  checkBoxVal = !checkBoxVal;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
