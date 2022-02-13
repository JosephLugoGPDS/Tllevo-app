import 'package:flutter/material.dart' show Icons;
import 'package:tllevo/core/values/strings_app.dart';

import 'package:tllevo/data/entities/shrinkdrawer_item.dart';

Map<int, ShrinkDrawerItem> drawerMap = {
  0: ShrinkDrawerItem(
    Icons.home_outlined,
    StringsApp.home(),
  ),
  1: ShrinkDrawerItem(
    Icons.search,
    StringsApp.search(),
  ),
  2: ShrinkDrawerItem(
    Icons.shopping_bag_outlined,
    StringsApp.myShoppings(),
  ),
  3: ShrinkDrawerItem(
    Icons.bar_chart_outlined,
    StringsApp.discounts(),
  ),
  4: ShrinkDrawerItem(
    Icons.history,
    StringsApp.history(),
  ),
  5: ShrinkDrawerItem(
    Icons.person_outline,
    StringsApp.myAccount(),
  ),
  6: ShrinkDrawerItem(
    Icons.sell_outlined,
    StringsApp.sell(),
  ),
  7: ShrinkDrawerItem(
    Icons.store_outlined,
    StringsApp.officialStore(),
  ),
  8: ShrinkDrawerItem(
    Icons.category_outlined,
    StringsApp.categories(),
  ),
  9: ShrinkDrawerItem(
    Icons.help_outline_outlined,
    StringsApp.help(),
  ),
  10: ShrinkDrawerItem(
    Icons.brightness_auto_outlined,
    StringsApp.about(),
  ),
};