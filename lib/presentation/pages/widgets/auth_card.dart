import 'package:flutter/material.dart';

import 'package:tllevo/core/style/text_style_app.dart';
import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';
import 'package:tllevo/core/values/strings_app.dart';
import 'package:tllevo/presentation/widgets/cards/container_card.dart';
import 'package:tllevo/presentation/widgets/theme_button.dart';

class AuthCard extends StatelessWidget {
  const AuthCard();

  @override
  Widget build(BuildContext context) {
    return ContainerCard([
      Container(
        margin: const EdgeInsets.all(MARGIN_SIZE_DEFAULT),
        child: Text(StringsApp.enjoyTheExperienceBetter(),
            style: TextStyleApp.b1().copyWith(
              color: textColor,
            )),
      ),
      ThemeButton(
        StringsApp.signUp(),
        color: primaryColor,
        margin: const EdgeInsets.only(
          top: MARGIN_SIZE_DEFAULT,
          left: MARGIN_SIZE_DEFAULT,
          right: MARGIN_SIZE_DEFAULT,
          bottom: MARGIN_SIZE_EXTRA_SMALL,
        ),
      ),
      ThemeButton(
        StringsApp.signIn(),
        margin: const EdgeInsets.only(
          bottom: MARGIN_SIZE_DEFAULT,
          top: MARGIN_SIZE_EXTRA_SMALL,
          left: MARGIN_SIZE_DEFAULT,
          right: MARGIN_SIZE_DEFAULT,
        ),
        color: greyVeryLightColor,
        textColor: greydarkColor,
      ),
    ]);
  }
}
