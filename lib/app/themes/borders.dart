
import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

abstract class borderRadius {
  static const br_t_20 = BorderRadius.only(
      topLeft: Radius.circular(20), topRight: Radius.circular(20));

  static BorderRadius br_0 = BorderRadius.circular(0);
  static BorderRadius br_5 = BorderRadius.circular(5);
  static BorderRadius br_10 = BorderRadius.circular(10);
  static BorderRadius br_20 = BorderRadius.circular(20);
  static BorderRadius br_30 = BorderRadius.circular(30);
  static BorderRadius br_100 = BorderRadius.circular(100);
}

abstract class borders {
  static Border b_05px_iconColor = Border.all(color: AppColors.iconColor, width: 0.5);
  static Border b_1px_grey4 = Border.all(color: AppColors.grey4, width: 1);
  static Border b_2px_green = Border.all(color: AppColors.green , width: 2);

  static Border bt_6px_bgPrimary = const Border(
      top: BorderSide(
        color: AppColors.bgPrimary,
        width: 6,
      ));
  static Border bt_6px_transparent = const Border(
      top: BorderSide(
        color: AppColors.transparent,
        width: 6,
      ));
  static Border bt_4px_grey1 = const Border(
      top: BorderSide(
        color: AppColors.grey1,
        width: 4,
      ));
  static Border bb_3px_bgPrimary = const Border(
      bottom: BorderSide(
        color: AppColors.bgPrimary,
        width: 3,
      ));
  static Border bb_1px_grey1 = const Border(
      bottom: BorderSide(
        color: Color(0xFFEAEAEA),
        width: 1,
      ));
  static Border bb_1px_grey4 = const Border(
      bottom: BorderSide(
        color: AppColors.grey4,
        width: 1,
      ));

}
