

import 'package:movia/models/subscription_model.dart';

import '../core/utils/color_constant.dart';

List<SubscriptionModel> subscriptionList=[
  SubscriptionModel(
    color: ColorConstant.redA400, 
  cost: '8.99', isMonthly: true),
  SubscriptionModel(
    color: ColorConstant.yellow800, 
  cost: '89.99', isMonthly: false),
];