import 'package:flutter/material.dart';

import 'package:tllevo/core/style/text_style_app.dart';
import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({this.color = blueColor, this.margin = const EdgeInsets.only(right: MARGIN_SIZE_EXTRA_SMALL, top: MARGIN_SIZE_LARGE)});
  final Color color;
  final EdgeInsets margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      alignment: Alignment.centerRight,
      child: Row(
        children: [
          Text('Ver Todos',
              style: TextStyleApp.sb2().copyWith(
                color: color,
              )),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: color,
          )
        ],
      ),
    );
  }
}
