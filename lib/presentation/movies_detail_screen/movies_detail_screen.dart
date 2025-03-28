import 'package:flutter/gestures.dart';
import 'package:movia/models/image_name_model.dart';
import 'package:movia/presentation/cast_screen/cast_screen.dart';
import 'package:movia/presentation/movies_detail_screen/widgets/gallery.dart';
import 'package:movia/presentation/reviews_screen/reviews_screen.dart';
import 'package:movia/presentation/series_detail_story_screen/series_detail_story_screen.dart';
import 'package:movia/widgets/spacing.dart';
import '../../data/actors.dart';
import '../../data/movies.dart';
import '../home_page/widgets/list_item_widget.dart';
import '../movie_player/movie_player.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MoviesDetailScreen extends StatelessWidget {
  ImageNameModel movie;
  MoviesDetailScreen({required this.movie});
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getVerticalSize(
                          400.00,
                        ),
                        width: size.width,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: CommonImageView(
                                imagePath: movie.img,
                                fit: BoxFit.cover,
                                height: getVerticalSize(
                                  400.00,
                                ),
                                width: getHorizontalSize(
                                  375.00,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                padding:
                                    getPadding(bottom: 13, left: 20, right: 20),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: isDark
                                        ? [
                                            ColorConstant.darkBg
                                                .withOpacity(0.3),
                                            ColorConstant.darkBg,
                                          ]
                                        : [
                                            ColorConstant.whiteA70000,
                                            ColorConstant.whiteA700,
                                          ],
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 61,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 4,
                                              right: 10,
                                            ),
                                            child: Text(
                                              movie.name,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: getFontSize(
                                                  20,
                                                ),
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w700,
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              175.00,
                                            ),
                                            margin: getMargin(
                                              top: 10,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    bottom: 1,
                                                  ),
                                                  child: Text(
                                                    "Action",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color:isDark?Colors.white: ColorConstant
                                                          .bluegray9009e,
                                                      fontSize: getFontSize(
                                                        12,
                                                      ),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      letterSpacing: 0.24,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: getSize(
                                                    4.00,
                                                  ),
                                                  width: getSize(
                                                    4.00,
                                                  ),
                                                  margin: getMargin(
                                                    top: 4,
                                                    bottom: 3,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.gray9007a,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        2.00,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "Drama",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: isDark?Colors.white:ColorConstant
                                                          .bluegray9009e,
                                                      fontSize: getFontSize(
                                                        12,
                                                      ),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      letterSpacing: 0.24,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: getSize(
                                                    4.00,
                                                  ),
                                                  width: getSize(
                                                    4.00,
                                                  ),
                                                  margin: getMargin(
                                                    top: 4,
                                                    bottom: 3,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:isDark?Colors.white:
                                                        ColorConstant.gray9007a,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        2.00,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "Adventure",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color:isDark?Colors.white: ColorConstant
                                                          .bluegray9009e,
                                                      fontSize: getFontSize(
                                                        12,
                                                      ),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      letterSpacing: 0.24,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                   
                                    CustomIconButton(
                                      height: 35,
                                      width: 35,
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MoviePlayer(movie: movie,)),
                                        );
                                      },
                                      child: CommonImageView(
                                        isRtl: isRtl,
                                        imagePath: ImageConstant.playButton,
                                      ),
                                    ),
                                
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 24,
                            top: 32,
                            right: 24,
                          ),
                          child: Text(
                            "Story",
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
                      ),
                      Container(
                        width: getHorizontalSize(
                          327.00,
                        ),
                        margin: getMargin(
                          left: 24,
                          top: 17,
                          right: 24,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "Following the events at home, the Abbott family now face the terrors of the outside world. Forced to venture into the unknown, they realize the creatures that hunt by sound are not the only threats lurking",
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
                              TextSpan(
                                text: ".",
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
                              TextSpan(
                                text: "..",
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
                              TextSpan(
                                text: " ",
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
                              TextSpan(
                                text: "More",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(24),
                                      )),
                                      builder: (context) {
                                        return SeriesDetailStoryScreen(
                                          movie: movie,
                                        );
                                      }),
                                style: TextStyle(
                                  color: ColorConstant.redA400,
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 1.43,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 24,
                          top: 40,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Gallery",
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
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 2,
                              ),
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>MoviesAndSeriesGallery()),
  );
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "See all",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            13,
                                          ),
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w400,
                                          height: 1.00,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                      ),
                                      child: CommonImageView(
                                        isRtl: isRtl,
                                        svgPath: ImageConstant.imgArrowright24X24,
                                        height: getSize(
                                          20.00,
                                        ),
                                        width: getSize(
                                          20.00,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          190.00,
                        ),
                        width: getHorizontalSize(
                          327.00,
                        ),
                        margin: getMargin(
                          left: 24,
                          top: 12,
                          right: 24,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                           onTap: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  MoviePlayer(movie: movie,)),
                                                        );
                                                      },
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
                                    imagePath: ImageConstant.imgVideo,
                                    height: getVerticalSize(
                                      190.00,
                                    ),
                                    width: getHorizontalSize(
                                      327.00,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              CustomIconButton(
                                height: 35,
                                width: 35,
                                margin: getMargin(
                                  all: 40,
                                ),
                                variant: IconButtonVariant.FillBluegray900b2,
                                alignment: Alignment.center,
                                child: CommonImageView(
                                  isRtl: isRtl,
                                  svgPath: ImageConstant.imgPlay,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 40,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: Text(
                                "Cast",
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
                            Padding(
                              padding: getPadding(
                                top: 2,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CastScreen(
                                              movie: movie,
                                            )),
                                  );
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "See all",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            13,
                                          ),
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w400,
                                          height: 1.00,
                                        ),
                                      ),
                                    ),
                                    HorizontalSpace(width: 5),
                                    CommonImageView(
                                      isRtl: isRtl,
                                      svgPath: ImageConstant.imgArrowright24X24,
                                      height: getSize(
                                        20.00,
                                      ),
                                      width: getSize(
                                        20.00,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      VerticalSpace(height: 12),
                      Container(
                        height: getVerticalSize(
                          117.00,
                        ),
                        child: ListView.separated(
                          padding: getPadding(left: 20, right: 20),
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemCount: actorsList.length,
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return HorizontalSpace(width: 20);
                          },
                          itemBuilder: (context, index) {
                            return ListItemWidget(
                              index: index,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 24,
                          top: 40,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: Text(
                                "Reviews",
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
                            Padding(
                              padding: getPadding(
                                top: 2,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ReviewsScreen()),
                                  );
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "See all",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            13,
                                          ),
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w400,
                                          height: 1.00,
                                        ),
                                      ),
                                    ),
                                    HorizontalSpace(width: 5),
                                    CommonImageView(
                                      isRtl: isRtl,
                                      svgPath: ImageConstant.imgArrowright24X24,
                                      height: getSize(
                                        20.00,
                                      ),
                                      width: getSize(
                                        20.00,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      VerticalSpace(height: 10),
                      Container(
                        height: getVerticalSize(200),
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(left: 20, right: 20),
                          itemCount: 3,
                          shrinkWrap: true,
                          separatorBuilder: (context, index) =>
                              HorizontalSpace(width: 30),
                          itemBuilder: (context, index) {
                            return Container(
                              width: getHorizontalSize(240),
                              padding: getPadding(left: 10, right: 10),
                              decoration: BoxDecoration(
                                color: isDark
                                    ? ColorConstant.darkContainer
                                    : ColorConstant.gray200,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    7.00,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 10,
                                      top: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 4,
                                            bottom: 2,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  bottom: 1,
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      16.00,
                                                    ),
                                                  ),
                                                  child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgUseravatar32X32,
                                                    height: getSize(
                                                      32.00,
                                                    ),
                                                    width: getSize(
                                                      32.00,
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 15,
                                                  top: 1,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Mary Smith",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
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
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 7,
                                                        right: 7,
                                                      ),
                                                      child: Text(
                                                        "@m_smith",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray600,
                                                          fontSize: getFontSize(
                                                            12,
                                                          ),
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing: 0.24,
                                                          height: 1.00,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 2,
                                            bottom: 25,
                                          ),
                                          child: Text(
                                            "Cruella",
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
                                  Container(
                                    width: getHorizontalSize(
                                      220.00,
                                    ),
                                    margin: getMargin(
                                      left: 10,
                                      top: 24,
                                    ),
                                    child: Text(
                                      "Cruella is often fun to watch, but its cavalier reversal of its core character cheapens the very idea of a corrective narrative. It takes a quintessential villain and nuances her character into oblivion.",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                        height: 1.43,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 10,
                                      top: 20,
                                      right: 10,
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        RatingBar(
                                          initialRating: 4,
                                          minRating: 0,
                                          direction: Axis.horizontal,
                                          ignoreGestures: true,
                                          allowHalfRating: false,
                                          itemSize: getVerticalSize(
                                            18.00,
                                          ),
                                          itemCount: 5,
                                          updateOnDrag: false,
                                          onRatingUpdate: (rating) {},
                                          ratingWidget: RatingWidget(
                                            full: Image.asset(
                                                ImageConstant.start),
                                            half: Image.asset(
                                                ImageConstant.start),
                                            empty: Image.asset(
                                                ImageConstant.startBorder),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 2,
                                            bottom: 2,
                                          ),
                                          child: Text(
                                            "21h ago",
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
                            );
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 24,
                              top: 40,
                              right: 24,
                            ),
                            child: Text(
                              "Similar",
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
                        ],
                      ),
                      VerticalSpace(height: 12),
                      Container(
                          height: getVerticalSize(225),
                          child: ListView.separated(
                              padding: getPadding(
                                left: 20,
                                right: 20,
                              ),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MoviesDetailScreen(
                                                movie: moviesList[index],
                                              )),
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            7.00,
                                          ),
                                        ),
                                        child: CommonImageView(
                                          imagePath: moviesList[index + 1].img,
                                          height: getVerticalSize(
                                            172.00,
                                          ),
                                          width: getHorizontalSize(
                                            115.00,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 11,
                                        ),
                                        child: Text(
                                          moviesList[index + 1].name,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w500,
                                            height: 1.00,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          115.00,
                                        ),
                                        margin: getMargin(
                                          top: 6,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 2,
                                                bottom: 3,
                                              ),
                                              child: Text(
                                                "1h 37m",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    12,
                                                  ),
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 0.24,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    9.00,
                                                  ),
                                                ),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 2,
                                                      bottom: 2,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgStar,
                                                      height: getSize(
                                                        14.00,
                                                      ),
                                                      width: getSize(
                                                        14.00,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 2,
                                                      top: 2,
                                                      bottom: 3,
                                                    ),
                                                    child: Text(
                                                      "4.2",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .gray600,
                                                        fontSize: getFontSize(
                                                          12,
                                                        ),
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0.24,
                                                        height: 1.00,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  HorizontalSpace(width: 20),
                              itemCount: 3)),
                      VerticalSpace(height: 14)
                    ],
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
