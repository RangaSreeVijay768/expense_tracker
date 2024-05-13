import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'edge_insets.dart';
import 'borders.dart';
import 'fonts.dart';

abstract class Buttons {
  static ButtonStyle sideMenuButton = TextButton.styleFrom(
      backgroundColor: AppColors.white,
      padding: edge_insets_y_12,
      shape: RoundedRectangleBorder(borderRadius: borderRadius.br_5));
}
