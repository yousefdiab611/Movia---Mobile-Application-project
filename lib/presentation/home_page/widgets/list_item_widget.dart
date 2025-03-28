import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/data/actors.dart';

import '../../actor_profile_screen/actor_profile_screen.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  int index;
  ListItemWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ActorProfileScreen()),
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  7.00,
                ),
              ),
              child: CommonImageView(
                imagePath: actorsList[index].img,
                height: getSize(
                  64.00,
                ),
                width: getSize(
                  64.00,
                ),
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: getHorizontalSize(
                  58.00,
                ),
                margin: getMargin(
                  top: 9,
                ),
                child: Text(
                  actorsList[index].name,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.gray600,
                    fontSize: getFontSize(
                      12,
                    ),
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.24,
                    height: 1.50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
