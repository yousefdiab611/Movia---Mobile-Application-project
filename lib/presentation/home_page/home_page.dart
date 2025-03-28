import 'package:movia/data/actors.dart';
import 'package:movia/data/movies.dart';
import 'package:movia/models/image_name_model.dart';
import 'package:movia/presentation/actors_screen/actors_screen.dart';
import 'package:movia/presentation/movie_player/movie_player.dart';
import 'package:movia/presentation/movies_detail_screen/movies_detail_screen.dart';
import 'package:movia/widgets/spacing.dart';
import '../home_page/widgets/list_item_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentMovieIndex = 0;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      bottom: 30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: getVerticalSize(
                              400.00,
                            ),
                            width: size.width,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                PageView.builder(
                                  itemCount: 4,
                                  onPageChanged: (index) {
                                    currentMovieIndex = index;
                                    setState(() {});
                                  },
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
                                      child: Container(
                                        height: getVerticalSize(
                                          400.00,
                                        ),
                                        width: size.width,
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: CommonImageView(
                                                imagePath:
                                                    moviesList[index].img,
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
                                                padding: getPadding(
                                                    bottom: 13,
                                                    left: 20,
                                                    right: 20),
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: isDark
                                                        ? [
                                                            ColorConstant.darkBg
                                                                .withOpacity(
                                                                    0.3),
                                                            ColorConstant
                                                                .darkBg,
                                                          ]
                                                        : [
                                                            ColorConstant
                                                                .whiteA70000,
                                                            ColorConstant
                                                                .whiteA700,
                                                          ],
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 61,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding: getPadding(
                                                              top: 4,
                                                            ),
                                                            child: Text(
                                                              moviesList[index]
                                                                  .name,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                fontSize:
                                                                    getFontSize(
                                                                  20,
                                                                ),
                                                                fontFamily:
                                                                    'SF Pro Display',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.00,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                getHorizontalSize(
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
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      getPadding(
                                                                    bottom: 1,
                                                                  ),
                                                                  child: Text(
                                                                    "Action",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style:
                                                                        TextStyle(
                                                                      color:isDark?Colors.white: ColorConstant
                                                                          .bluegray9009e,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        12,
                                                                      ),
                                                                      fontFamily:
                                                                          'SF Pro Display',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      letterSpacing:
                                                                          0.24,
                                                                      height:
                                                                          1.00,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  height:
                                                                      getSize(
                                                                    4.00,
                                                                  ),
                                                                  width:
                                                                      getSize(
                                                                    4.00,
                                                                  ),
                                                                  margin:
                                                                      getMargin(
                                                                    top: 4,
                                                                    bottom: 3,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: ColorConstant
                                                                        .gray9007a,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                      getHorizontalSize(
                                                                        2.00,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      getPadding(
                                                                    top: 1,
                                                                  ),
                                                                  child: Text(
                                                                    "Drama",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style:
                                                                        TextStyle(
                                                                      color:isDark?Colors.white: ColorConstant
                                                                          .bluegray9009e,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        12,
                                                                      ),
                                                                      fontFamily:
                                                                          'SF Pro Display',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      letterSpacing:
                                                                          0.24,
                                                                      height:
                                                                          1.00,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  height:
                                                                      getSize(
                                                                    4.00,
                                                                  ),
                                                                  width:
                                                                      getSize(
                                                                    4.00,
                                                                  ),
                                                                  margin:
                                                                      getMargin(
                                                                    top: 4,
                                                                    bottom: 3,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: isDark?Colors.white:ColorConstant
                                                                        .gray9007a,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                      getHorizontalSize(
                                                                        2.00,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      getPadding(
                                                                    top: 1,
                                                                  ),
                                                                  child: Text(
                                                                    "Adventure",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style:
                                                                        TextStyle(
                                                                      color:isDark?Colors.white: ColorConstant
                                                                          .bluegray9009e,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        12,
                                                                      ),
                                                                      fontFamily:
                                                                          'SF Pro Display',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      letterSpacing:
                                                                          0.24,
                                                                      height:
                                                                          1.00,
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
                                                                  MoviePlayer(movie: moviesList[index],)),
                                                        );
                                                      },
                                                      child: CommonImageView(
                                                        isRtl: isRtl,
                                                        imagePath: ImageConstant
                                                            .playButton,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: getVerticalSize(
                                          6.00,
                                        ),
                                        margin: getMargin(
                                            top: 16, left: 20, right: 20),
                                        child: AnimatedSmoothIndicator(
                                          activeIndex: currentMovieIndex,
                                          count: 4,
                                          axisDirection: Axis.horizontal,
                                          effect: ScrollingDotsEffect(
                                            spacing: 12,
                                            activeDotColor:
                                                ColorConstant.redA400,
                                            dotColor:isDark?ColorConstant.gray500: ColorConstant.gray9006c,
                                            dotHeight: getVerticalSize(
                                              6.00,
                                            ),
                                            dotWidth: getHorizontalSize(
                                              6.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                                left: 20, right: 20, bottom: 12, top: 40),
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
                                    "Latests",
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
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
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
                                      HorizontalSpace(width: 5),
                                      CommonImageView(
                                        isRtl: isRtl,
                                        svgPath:
                                            ImageConstant.imgArrowright24X24,
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
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(225),
                          child: ListView.separated(
                            padding: getPadding(
                              left: 20,
                              right: 20,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                moviesList.length > 3 ? 3 : moviesList.length,
                            separatorBuilder: (context, index) =>
                                HorizontalSpace(width: 25),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MoviesDetailScreen(
                                              movie: moviesList[index + 1],
                                            )),
                                  );
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray600,
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
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              left: 10,
                              top: 32,
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7.00,
                                ),
                              ),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MoviesDetailScreen(
                                            movie: ImageNameModel(
                                                img: ImageConstant
                                                    .imgPoster122X81,
                                                name: 'Vikings'),
                                          )),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 20,
                                      right: 20,
                                      top: 6,
                                      bottom: 6,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          7.00,
                                        ),
                                      ),
                                      child: CommonImageView(
                                        imagePath:
                                            ImageConstant.imgPoster122X81,
                                        height: getVerticalSize(
                                          122.00,
                                        ),
                                        width: getHorizontalSize(
                                          81.00,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  HorizontalSpace(width: 13),
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "6 seasons",
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
                                        Padding(
                                          padding: getPadding(
                                            top: 12,
                                          ),
                                          child: Text(
                                            "Vikings",
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
                                        HorizontalSpace(width: 10),
                                        Padding(
                                          padding: getPadding(
                                            top: 7,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Action",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    11,
                                                  ),
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 0.22,
                                                  height: 1.00,
                                                ),
                                              ),
                                              HorizontalSpace(width: 10),
                                              Container(
                                                height: getSize(
                                                  4.00,
                                                ),
                                                width: getSize(
                                                  4.00,
                                                ),
                                                margin: getMargin(
                                                  top: 5,
                                                  bottom: 5,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.gray9006c,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      2.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              HorizontalSpace(width: 10),
                                              Text(
                                                "Drama",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    11,
                                                  ),
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 0.22,
                                                  height: 1.00,
                                                ),
                                              ),
                                              HorizontalSpace(width: 10),
                                              Container(
                                                height: getSize(
                                                  4.00,
                                                ),
                                                width: getSize(
                                                  4.00,
                                                ),
                                                margin: getMargin(
                                                  top: 5,
                                                  bottom: 5,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.gray9006c,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      2.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              HorizontalSpace(width: 10),
                                              Text(
                                                "Adventure",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    11,
                                                  ),
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 0.22,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        HorizontalSpace(width: 10),
                                        Container(
                                          width: getHorizontalSize(
                                            211.00,
                                          ),
                                          margin: getMargin(
                                            top: 18,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomIconButton(
                                                height: 30,
                                                width: 30,
                                                shape: IconButtonShape
                                                    .CircleBorder15,
                                                child: CommonImageView(
                                                  isRtl: isRtl,
                                                  imagePath:
                                                      ImageConstant.playButton,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 7,
                                                  bottom: 7,
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgStar,
                                                      height: getSize(
                                                        16.00,
                                                      ),
                                                      width: getSize(
                                                        16.00,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 2,
                                                        top: 1,
                                                        bottom: 2,
                                                      ),
                                                      child: Text(
                                                        "4.2",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color:isDark?Colors.white:ColorConstant
                                                              .gray90095,
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
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 1,
                                                        bottom: 8,
                                                      ),
                                                      child: Text(
                                                        "/",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color:isDark?Colors.white: ColorConstant
                                                              .gray90095,
                                                          fontSize: getFontSize(
                                                            10,
                                                          ),
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing: 0.20,
                                                          height: 1.00,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 7,
                                                        bottom: 2,
                                                      ),
                                                      child: Text(
                                                        "5",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color:isDark?Colors.white: ColorConstant
                                                              .gray90095,
                                                          fontSize: getFontSize(
                                                            10,
                                                          ),
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing: 0.20,
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
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 20,
                              top: 32,
                              right: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Popular Actors",
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
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ActorsScreen()),
                                      );
                                    },
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
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
                                        HorizontalSpace(width: 5),
                                        CommonImageView(
                                          isRtl: isRtl,
                                          svgPath:
                                              ImageConstant.imgArrowright24X24,
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
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 20,
                              top: 32,
                              right: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Trends",
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
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
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
                              ],
                            ),
                          ),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              7.00,
                                            ),
                                          ),
                                          child: CommonImageView(
                                            imagePath:
                                                moviesList[index + 1].img,
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily:
                                                        'SF Pro Display',
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 2,
                                                        bottom: 2,
                                                      ),
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgStar,
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
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    HorizontalSpace(width: 20),
                                itemCount: 3)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
