import 'package:flutter/material.dart';
import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard(this.children);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(MARGIN_SIZE_DEFAULT),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RADIUS_SIZE_SMALL),
        color: whiteColor,
      ),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(RADIUS_SIZE_SMALL),
        color: whiteColor,
        child: Container(
          // margin: const EdgeInsets.all(MARGIN_SIZE_DEFAULT),
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}