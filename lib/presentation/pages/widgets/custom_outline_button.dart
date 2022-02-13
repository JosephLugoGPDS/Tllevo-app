import 'package:flutter/material.dart';

import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';
import 'package:tllevo/presentation/pages/widgets/see_more.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    this.color = whiteColor,
    this.margin = const EdgeInsets.symmetric(
        horizontal: MARGIN_SIZE_DEFAULT, vertical: MARGIN_SIZE_DEFAULT),
  });
  final Color color;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Container(
        // width: double.maxFinite,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(3),
            border: Border.all(
              color: color,
              width: 1,
            )),
        padding: const EdgeInsets.symmetric(
            horizontal: PADDING_SIZE_SMALL, vertical: PADDING_SIZE_SMALL),
        child: SeeMore(color: color, margin: const EdgeInsets.all(0)),
      ),
    );
  }
}
