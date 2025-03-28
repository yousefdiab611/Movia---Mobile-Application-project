import '../search_result_grid_screen/widgets/gridposter_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

// ignore: must_be_immutable
class SearchResultGridScreen extends StatelessWidget {
  TextEditingController searchTextfieController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: getPadding(top: 20, bottom: 10),
      child: GridView.builder(
        padding: getPadding(left: 20, right: 20),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: getVerticalSize(
            287.00,
          ),
          crossAxisCount: 2,
          mainAxisSpacing: getHorizontalSize(
            21.00,
          ),
          crossAxisSpacing: getHorizontalSize(
            21.00,
          ),
        ),
        physics: BouncingScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return GridposterItemWidget();
        },
      ),
    );
  }
}
