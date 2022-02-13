import 'package:flutter/material.dart';
import 'package:tllevo/core/style/text_style_app.dart';
import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';

class ShrinkDrawerTile extends StatelessWidget {
  const ShrinkDrawerTile(
    this.title,{
      required this.leadingIcon,
      required this.isActive,
      this.handleActive,
    });
  final String title;
  final IconData leadingIcon;
  final bool isActive;
  final void Function()? handleActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isActive? primaryColor : Colors.transparent,
      ),
      child: ListTileTheme.merge(
        horizontalTitleGap: MARGIN_SIZE_EXTRA_SMALL,
        contentPadding: const EdgeInsets.symmetric(horizontal: PADDING_SIZE_MEDIUM),
        child: ListTile(
          selected: isActive,
          onTap: handleActive,
          visualDensity: VisualDensity.compact,
          leading: Icon(leadingIcon, color: isActive ? whiteColor: textColor),
          title: Text(
            title,
            style: TextStyleApp.sb2().copyWith(
              color: isActive? whiteColor : textColor,
            )
          ),
        ),
      )
    );
  }
}