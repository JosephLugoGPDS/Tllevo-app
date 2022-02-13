import 'package:flutter/material.dart';
import 'package:tllevo/core/style/text_style_app.dart';
import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';
import 'package:tllevo/data/local/dictionaries.dart';

class CategoriesHorizontal extends StatelessWidget {
  const CategoriesHorizontal();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: const EdgeInsets.symmetric(horizontal: MARGIN_SIZE_DEFAULT),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(PADDING_SIZE_DEFAULT),
            child: Column(
              children: [
                Material(
                  elevation: 2,
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(RADIUS_SIZE_LARGE),
                  child: Image.asset('assets/categories.png',
                      height: RADIUS_SIZE_DEFAULT * 2),
                ),
                const SizedBox(height: MARGIN_SIZE_EXTRA_SMALL),
                Expanded(
                  child: Text(
                    categoryMap[index]!,
                    style: TextStyleApp.sb2(),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
