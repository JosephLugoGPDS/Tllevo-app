import 'package:flutter/material.dart';

import 'package:tllevo/core/style/text_style_app.dart';
import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton(
    this.title, {
    this.textColor = whiteColor,
    this.color = blueColor,
  });
  final String title;
  final Color textColor;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: MARGIN_SIZE_DEFAULT, vertical: MARGIN_SIZE_DEFAULT),
      child: Material(
        borderRadius: BorderRadius.circular(RADIUS_SIZE_SMALL),
        color: color,
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(horizontal: PADDING_SIZE_SMALL, vertical: PADDING_SIZE_SMALL),
          child: Text(
            title,
            style: TextStyleApp.b1().copyWith(
              color: whiteColor,
            ),
            textAlign: TextAlign.center,
          )
        )
      )
    );
  }
}