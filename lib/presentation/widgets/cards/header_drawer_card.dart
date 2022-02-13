import 'package:flutter/material.dart';

import 'package:tllevo/core/style/text_style_app.dart';
import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';
import 'package:tllevo/core/values/strings_app.dart';
import 'package:tllevo/presentation/widgets/theme_button.dart';

class HeaderDrawerCard extends StatelessWidget {
  const HeaderDrawerCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + MARGIN_SIZE_DEFAULT),
      height: 130,
      child: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: ICON_SIZE_LARGE,
                  height: ICON_SIZE_LARGE,
                  margin: const EdgeInsets.only(left: MARGIN_SIZE_DEFAULT),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(RADIUS_SIZE_SMALL),
                    color: greyLightColor,
                  ),
                  child: Icon(
                    Icons.person,
                    color: greyColor,
                    size: ICON_SIZE_MEDIUM,
                  ),
                ),
                const SizedBox(width: MARGIN_SIZE_SMALL),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(right: MARGIN_SIZE_DEFAULT),
                    child: Text(
                      StringsApp.youWantToAccessTheBestDiscount(),
                      style: TextStyleApp.b1().copyWith(
                        color: textColor,
                      )
                    ),
                  ),
                )
              ],
            ),
          ),
          ThemeButton(StringsApp.signIn()),
        ],
      ),
    );
  }
}
