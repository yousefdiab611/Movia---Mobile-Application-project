import 'package:movia/data/history.dart';
import 'package:movia/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import '../movie_player/movie_player.dart';

// ignore_for_file: must_be_immutable
class HistoryDownloadedPage extends StatefulWidget {
  @override
  State<HistoryDownloadedPage> createState() => _HistoryDownloadedPageState();
}

class _HistoryDownloadedPageState extends State<HistoryDownloadedPage> {
  @override
  Widget build(BuildContext context) {
    return historyDownLoadedList.length == 0
        ? Column(
            children: [
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 178,
                  right: 24,
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgIllustrationGray200,
                  height: getVerticalSize(
                    121.00,
                  ),
                  width: getHorizontalSize(
                    101.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 33,
                  right: 24,
                ),
                child: Text(
                  "No downloads",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: getFontSize(
                      24,
                    ),
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w700,
                    height: 1.00,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  256.00,
                ),
                margin: getMargin(
                  left: 24,
                  top: 15,
                  right: 24,
                ),
                child: Text(
                  "your downloaded movies will be displayed in this page ",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.gray600,
                    fontSize: getFontSize(
                      14,
                    ),
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 1.43,
                  ),
                ),
              ),
            ],
          )
        : ListView.separated(
            padding: getPadding(left: 20, right: 20),
            separatorBuilder: (context, index) {
              return VerticalSpace(height: 20);
            },
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: historyDownLoadedList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MoviePlayer(
                              movie: historyDownLoadedList[index],
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
                            alignment: Alignment.center,
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
                                    imagePath: historyDownLoadedList[index].img,
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
                                  height: getSize(
                                    26.00,
                                  ),
                                  width: getSize(
                                    26.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        HorizontalSpace(width: 20),
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
                              Padding(
                                padding: getPadding(
                                  right: 10,
                                ),
                                child: Text(
                                  historyDownLoadedList[index].name,
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
                                  top: 21,
                                  right: 10,
                                ),
                                child: Text(
                                  "1h 55m   /   1.2GB",
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
                                ),
                                child: Text(
                                  "Downloaded: 12h ago",
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
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Container(
                                    width: double.infinity,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 47,
                                            top: 20,
                                            right: 47,
                                          ),
                                          child: Text(
                                            "Delete " +
                                                historyDownLoadedList[index]
                                                    .name,
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
                                            182.00,
                                          ),
                                          margin: getMargin(
                                            left: 47,
                                            top: 18,
                                            right: 47,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "Are you sure you want to delete ",
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.43,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "“${historyDownLoadedList[index].name}”",
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.43,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: " of storage ?",
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.43,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 20,
                                            top: 32,
                                            right: 20,
                                            bottom: 18,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  width: getHorizontalSize(100),
                                                  padding: getPadding(
                                                      top: 8,
                                                      bottom: 8,
                                                      left: 18,
                                                      right: 18),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
                                                  child: Text(
                                                    "Cancel",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                onTap: () {
                                                  Navigator.pop(context);
                                                  historyDownLoadedList.remove(
                                                      historyDownLoadedList[
                                                          index]);
                                                  setState(() {});
                                                },
                                                child: Container(
                                                  width: getHorizontalSize(100),
                                                  padding: getPadding(
                                                      top: 8,
                                                      bottom: 8,
                                                      left: 18,
                                                      right: 18),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                    color:
                                                        ColorConstant.redA400,
                                                  ),
                                                  child: Text(
                                                    "Delete Now",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: CommonImageView(
                          imagePath: ImageConstant.delete,
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
  }
}
