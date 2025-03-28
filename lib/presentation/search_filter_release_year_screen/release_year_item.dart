import 'package:flutter/material.dart';
import 'package:movia/data/year_release.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class ReleaseYearItem extends StatefulWidget {
  int index;
  ReleaseYearItem({required this.index});

  @override
  State<ReleaseYearItem> createState() => _ReleaseYearItemState();
}

class _ReleaseYearItemState extends State<ReleaseYearItem> {
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
              text: yearReleaseList[widget.index],
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
