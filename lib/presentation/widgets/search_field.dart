import 'package:flutter/material.dart';
import 'package:tllevo/core/style/text_style_app.dart';
import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';

class SearchField extends StatelessWidget {
  const SearchField(this.hint);
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(MARGIN_SIZE_DEFAULT),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(RADIUS_SIZE_SMALL),
      ),
      child: TextFormField(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          hintText: hint,
          suffixIcon: InkWell(
            child: Icon(Icons.search_outlined, color: greyLightColor),
          ),
          contentPadding: const EdgeInsets.only(
            top: MARGIN_SIZE_DEFAULT,
            left: MARGIN_SIZE_DEFAULT,
          ),
          hintStyle: TextStyleApp.sb2().copyWith(color: greyColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(RADIUS_SIZE_SMALL),
            borderSide: BorderSide(color: whiteColor),
          )
        ),
      )
    );
  }
}