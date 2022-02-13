import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';
import 'package:tllevo/data/local/dictionaries.dart';
import 'package:tllevo/presentation/controllers/shrinkdrawer_controller.dart';
import 'package:tllevo/presentation/widgets/drawer/shrinkdrawer_tile.dart';

class ShrinkDrawer extends StatelessWidget {
  const ShrinkDrawer();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.8,
          color: whiteColor,
          child: Column(
            children: [
              const SizedBox(height: MARGIN_SIZE_DEFAULT),
              const Divider(),
              Consumer<ShrinkDrawerController>(
                builder: (context, controller, _) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: drawerMap.length,
                      itemBuilder: (context, index) {
                        int key = drawerMap.keys.elementAt(index);
                        return Column(
                          children: [
                            ShrinkDrawerTile(
                              drawerMap[key]!.title,
                              isActive: controller.currentIndex == key,
                              leadingIcon: drawerMap[key]!.icon,
                              handleActive: () => controller.handleActive(index),
                            ),
                          ],
                        );
                      }
                    )
                  );
                }
              )
            ],
          )
        ),
      ],
    );
  }
}