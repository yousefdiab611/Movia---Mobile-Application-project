import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/models/image_name_model.dart';
import 'package:movia/widgets/custom_button.dart';

// ignore: must_be_immutable
class SeriesDetailStoryScreen extends StatelessWidget {
  ImageNameModel movie;
  SeriesDetailStoryScreen({required this.movie});
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
            "${movie.name} / Story",
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
        Container(
          width: getHorizontalSize(
            315.00,
          ),
          margin: getMargin(
            left: 30,
            top: 37,
            right: 30,
          ),
          child: Text(
            "The adventures of a Ragnar Lothbrok: the greatest hero of his age. The series tells the saga of Ragnar's band of Viking brothers and his family as he rises to become King of the Viking tribes. As well as being a fearless warrior, Ragnar embodies the Norse traditions of devotion to the gods: legend has it that he was a direct descendant of Odin, the god of war and warriors.",
            maxLines: null,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: getFontSize(
                16,
              ),
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              height: 1.38,
            ),
          ),
        ),
        CustomButton(
          isDark: isDark,
          width: 315,
          text: "Watch Now",
          margin: getMargin(
            left: 30,
            top: 36,
            right: 30,
            bottom: 10,
          ),
        ),
      ],
    );
  }
}
