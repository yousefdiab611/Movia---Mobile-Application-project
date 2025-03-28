import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/data/actors.dart';
import 'package:movia/presentation/actor_profile_screen/actor_profile_screen.dart';

// ignore: must_be_immutable
class ListimgItemWidget extends StatelessWidget {
  int index;
  ListimgItemWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ActorProfileScreen()),
        );
      },
      child: Container(
        width: getHorizontalSize(151),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    7.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: actorsList[index].img,
                  height: getSize(
                    151.00,
                  ),
                  width: getSize(
                    151.00,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 8,
              ),
              child: Text(
                actorsList[index].name,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: ColorConstant.gray600,
                  fontSize: getFontSize(
                    12,
                  ),
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.24,
                  height: 1.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
