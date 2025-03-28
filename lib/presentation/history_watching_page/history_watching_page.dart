import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/data/history.dart';
import 'package:movia/widgets/spacing.dart';
import '../movie_player/movie_player.dart';

// ignore_for_file: must_be_immutable
class HistoryWatchingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale == Constants.arLocal;
    return ListView.separated(
        padding: getPadding(left: 20, right: 20),
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MoviePlayer(
                          movie: historyWatchingList[index],
                        )),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    Container(
                      height: getVerticalSize(
                        84.00,
                      ),
                      width: getHorizontalSize(
                        150.00,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: historyWatchingList[index].img,
                                height: getVerticalSize(
                                  84.00,
                                ),
                                width: getHorizontalSize(
                                  150.00,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: CommonImageView(
                              imagePath: ImageConstant.playIcon,
                              width: getHorizontalSize(26),
                              height: getVerticalSize(26),
                            ),
                          ),
                          Padding(
                            padding: getPadding(left: 7, right: 7, bottom: 7),
                            child: LinearProgressIndicator(
                              backgroundColor: ColorConstant.gray60099,
                              color: ColorConstant.redA400,
                              value: 0.7,
                            ),
                          )
                        ],
                      ),
                    ),
                    HorizontalSpace(width: 12),
                    Padding(
                      padding: getPadding(
                        top: 7,
                        bottom: 6,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              historyWatchingList[index].name,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                height: 1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 19,
                            ),
                            child: Text(
                              "00:36:08   /   01:37:00",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.gray600,
                                fontSize: getFontSize(
                                  11,
                                ),
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.22,
                                height: 1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                              right: 8,
                            ),
                            child: Text(
                              "Last watched: 1d ago",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.gray600,
                                fontSize: getFontSize(
                                  11,
                                ),
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.22,
                                height: 1.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 30,
                    bottom: 30,
                  ),
                  child: CommonImageView(
                    isRtl: isRtl,
                    svgPath: ImageConstant.imgArrowright24X24,
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => VerticalSpace(height: 20),
        itemCount: historyWatchingList.length);
  }
}
