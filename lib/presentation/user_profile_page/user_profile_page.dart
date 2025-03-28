import 'package:movia/widgets/spacing.dart';
import '../user_profile_page/widgets/user_profile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

// ignore_for_file: must_be_immutable
class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          padding: getPadding(
            left: 20,
            right: 20
          ),
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 2,
          separatorBuilder: (context,index){
            return VerticalSpace(height: 10);
          },
          itemBuilder: (context, index) {
            return UserProfileItemWidget();
          },
        ),
      ),
    );
  }
}
