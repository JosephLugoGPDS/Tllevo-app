import 'package:flutter/material.dart';

import 'package:tllevo/core/style/text_style_app.dart';
import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';
import 'package:tllevo/presentation/pages/widgets/custom_outline_button.dart';
import 'package:tllevo/presentation/widgets/cards/container_card.dart';

class NewsSection extends StatelessWidget {
  const NewsSection(this.title, this.image,
      {this.color = whiteColor, this.backgroundColor = greenColor});
  final String title;
  final String image;
  final Color color;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ContainerCard([
      Container(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(MARGIN_SIZE_SMALL),
                height: double.maxFinite,
                color: backgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: TextStyleApp.h1().copyWith(
                          color: color,
                          height: 1.2,
                        )
                      ),
                    ),
                    CustomOutlineButton(color: color)
                  ],
                ),
              ),
            ),
            Expanded(
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
