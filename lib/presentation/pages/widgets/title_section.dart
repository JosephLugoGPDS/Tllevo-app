import 'package:flutter/material.dart';

import 'package:tllevo/core/style/text_style_app.dart';
import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';
import 'package:tllevo/presentation/pages/widgets/see_more.dart';

class TitleSection extends StatelessWidget {
  const TitleSection(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.symmetric(horizontal: MARGIN_SIZE_DEFAULT),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyleApp.h2().copyWith(
                color: textColor,
              ),
            ),
          ),
          const SeeMore()
        ],
      ),
    );
  }
}
