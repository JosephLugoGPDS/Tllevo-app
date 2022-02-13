import 'package:flutter/material.dart';

import 'package:tllevo/core/style/text_style_app.dart';
import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';

class SeeMore extends StatelessWidget {
  const SeeMore();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: MARGIN_SIZE_EXTRA_SMALL, top: MARGIN_SIZE_LARGE),
      alignment: Alignment.centerRight,
      child: Row(
        children: [
          Text('Ver Todos',
              style: TextStyleApp.sb2().copyWith(
                color: blueColor,
              )),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: blueColor,
          )
        ],
      ),
    );
  }
}
