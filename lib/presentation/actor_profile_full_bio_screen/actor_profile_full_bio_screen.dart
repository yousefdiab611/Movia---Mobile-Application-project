import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

class ActorProfileFullBioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return  Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment:
          CrossAxisAlignment.center,
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
            left: 30,
            top: 10,
            right: 30,
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
            left: 30,
            top: 12,
            right: 30,
          ),
          child: Text(
            "Emma Watson",
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
        Container(
          width: getHorizontalSize(
            315.00,
          ),
          margin: getMargin(
            left: 30,
            top: 40,
            right: 30,
            bottom: 14,
          ),
          child: Text(
            "Emma Charlotte Duerre Watson was born in Paris, France, to British parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended the Dragon School. From the age of six, Emma knew that she wanted to be an actress and, for a number of years, she trained at the Oxford branch of Stagecoach Theatre Arts, a part-time theatre school where she studied singing, dancing and acting. By the age of ten, she had performed and taken the lead in various Stagecoach productions and school plays.\r\n\r\nIn 1999, casting began for Harry Potter and the Sorcerers Stone (2001), the film adaptation of British author J.K. Rowling's bestselling novel. Casting agents found Emma through her Oxford theatre teacher.",
            maxLines: null,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color:isDark?ColorConstant.whiteA700: ColorConstant.gray600,
              fontSize: getFontSize(
                16,
              ),
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              height: 1.38,
            ),
          ),
        ),
      ],
    );
  }
}
