import 'package:movia/presentation/search_result_grid_screen/search_result_grid_screen.dart';
import '../../data/actors.dart';
import '../../widgets/spacing.dart';
import '../home_page/widgets/list_item_widget.dart';
import '../search_result_row_page/widgets/listposter1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchResultRowPage extends StatefulWidget {
  @override
  State<SearchResultRowPage> createState() => _SearchResultRowPageState();
}

class _SearchResultRowPageState extends State<SearchResultRowPage> {
  TextEditingController searchTextfieController = TextEditingController();
  bool isRow = true;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: getPadding(top: 0, left: 20, right: 20),
              child: Text(
                "Actors",
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
            VerticalSpace(height: 12),
            Container(
              height: getVerticalSize(
                117.00,
              ),
              child: ListView.separated(
                padding: getPadding(
                  left: 20,
                  right: 20,
                ),
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
              padding: getPadding(top: 32, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Movies & Series",
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
                      InkWell(
                        onTap: () {
                          setState(() {
                            isRow = true;
                          });
                        },
                        child: Image.asset(
                          ImageConstant.row,
                          color: isRow
                              ? isDark
                                  ? Colors.white
                                  : Colors.black
                              : isDark
                                  ? ColorConstant.gray500
                                  : ColorConstant.gray600,
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                        ),
                      ),
                      HorizontalSpace(width: 20),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isRow = false;
                          });
                        },
                        child: Image.asset(
                          ImageConstant.grid,
                          height: getSize(
                            24.00,
                          ),
                          color: isRow
                              ? isDark
                                  ? ColorConstant.gray500
                                  : ColorConstant.gray600
                              : isDark
                                  ? Colors.white
                                  : Colors.black,
                          width: getSize(
                            24.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            isRow
                ? Align(
                    alignment: Alignment.center,
                    child: ListView.builder(
                      padding: getPadding(top: 20, right: 20, left: 20),
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Listposter1ItemWidget();
                      },
                    ),
                  )
                : SearchResultGridScreen(),
          ],
        ),
      ),
    );
  }
}
