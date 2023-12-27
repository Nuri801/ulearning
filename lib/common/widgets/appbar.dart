import 'package:flutter/material.dart';
import 'package:ulearning/common/widgets/text_widgets.dart';

import '../utils/app_colors.dart';

AppBar buildAppBar(String title) {
  return AppBar(
    automaticallyImplyLeading: false,
    // forceMaterialTransparency: ,
    // surfaceTintColor: Colors.white,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: Colors.black,
        height: 0.2,
      ),
    ),
    title: text16normal(
      text: title,
      color: AppColors.primaryText,
    ),
  );
}