import 'package:flutter/material.dart';

import 'package:tllevo/core/style/text_style_app.dart';
import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';
import 'package:tllevo/data/local/dictionaries.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_SIZE_DEFAULT),
      physics: const BouncingScrollPhysics(),
      children: [
        Wrap(
          runSpacing: 0,
          spacing: MARGIN_SIZE_EXTRA_SMALL,
          children: List.generate(
            6,
            (index) => Container(
              padding: const EdgeInsets.all(PADDING_SIZE_SMALL),
              height: RADIUS_SIZE_MAX_MEDIUM * 4,
              width: RADIUS_SIZE_MAX_MEDIUM * 4,
              child: Column(
                children: [
                  Material(
                    elevation: 2,
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      padding: const EdgeInsets.all(PADDING_SIZE_SMALL),
                      child: Image.asset(
                        'assets/categories.png',
                        height: RADIUS_SIZE_MAX_MEDIUM * 2,
                        width: RADIUS_SIZE_MAX_MEDIUM *2,
                      ),
                    ),
                  ),
                  const SizedBox(height: MARGIN_SIZE_EXTRA_SMALL),
                  Expanded(
                    child: Text(
                      categoryMap[index]!,
                      style: TextStyleApp.sb2().copyWith(
                        fontSize: 8,
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
