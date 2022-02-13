import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';
import 'package:tllevo/core/values/strings_app.dart';
import 'package:tllevo/presentation/pages/widgets/auth_card.dart';
import 'package:tllevo/presentation/pages/widgets/categories_horizontal.dart';
import 'package:tllevo/presentation/pages/widgets/news_section.dart';
import 'package:tllevo/presentation/pages/widgets/primary_offerts_cards.dart';
import 'package:tllevo/presentation/pages/widgets/products_gridview.dart';
import 'package:tllevo/presentation/pages/widgets/title_section.dart';
import 'package:tllevo/presentation/widgets/drawer/shrinkdrawer.dart';
import 'package:tllevo/presentation/widgets/search_field.dart';

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
          IconButton(
              onPressed: () => null,
              icon: const Icon(Icons.notifications_sharp,
                  size: ICON_SIZE_DEFAULT)),
          IconButton(
              onPressed: () => null,
              icon: const Icon(Icons.favorite, size: ICON_SIZE_DEFAULT))
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            color: primaryColor,
          ),
          ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SearchField(StringsApp.searchTheProductyouWant()),
              const PrimaryOffertsCards(),
              const CategoriesHorizontal(),
              const AuthCard(),
              const TitleSection('Te mereces todo esto'),
              const ProductsGridView(),
              const TitleSection('Novedades'),
              const NewsSection(
                'It is a long established fact that a reader will be distracted by',
                'assets/news.png',
                color: whiteColor,
              )
            ],
          ),
        ],
      ),
    );
  }
}
