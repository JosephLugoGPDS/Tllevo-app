import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';
import 'package:tllevo/presentation/widgets/drawer/shrinkdrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const ShrinkDrawer(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: primaryColor),
        title: Image.asset('assets/brand.png'),
        actions: [
          IconButton(onPressed: () => null, icon: const Icon(Icons.notifications_sharp, size: ICON_SIZE_DEFAULT)),
          IconButton(onPressed: () => null, icon: const Icon(Icons.favorite, size: ICON_SIZE_DEFAULT))
        ],
      ),
      body: Container(
        height: double.maxFinite
      ),
    );
  }
}