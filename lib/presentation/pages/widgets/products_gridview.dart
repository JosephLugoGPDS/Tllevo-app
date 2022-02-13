import 'package:flutter/material.dart';
import 'package:tllevo/core/style/text_style_app.dart';

import 'package:tllevo/core/theme/colors_app.dart';
import 'package:tllevo/core/values/dimension.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_SIZE_DEFAULT),
      physics: const BouncingScrollPhysics(),
      children: [
        Wrap(
            runSpacing: MARGIN_SIZE_DEFAULT,
            spacing: MARGIN_SIZE_DEFAULT,
            children: List.generate(
              4,
              (index) => Material(
                elevation: 2,
                color: whiteColor,
                borderRadius: BorderRadius.circular(RADIUS_SIZE_SMALL),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5 -
                      MARGIN_SIZE_DEFAULT * 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            'assets/frezzer.png',
                            width: MediaQuery.of(context).size.width * 0.5 -
                                MARGIN_SIZE_DEFAULT * 2,
                          ),
                          Positioned(
                            right: MARGIN_SIZE_EXTRA_SMALL,
                            top: MARGIN_SIZE_EXTRA_SMALL,
                            child: CircleAvatar(
                              backgroundColor: greyBackgroundColor,
                              radius: RADIUS_SIZE_MEDIUM,
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: greydarkColor,
                                size: ICON_SIZE_EXTRA_SMALL,
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(MARGIN_SIZE_SMALL),
                        child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting'),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.symmetric(horizontal: MARGIN_SIZE_SMALL),
                        child: Text(
                          '\$1740',
                          textAlign: TextAlign.start,
                          style: TextStyleApp.sb2().copyWith(
                            color: greyLightColor,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: MARGIN_SIZE_SMALL),
                            child: Text(
                              '\$870',
                              textAlign: TextAlign.start,
                              style: TextStyleApp.h3(),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: MARGIN_SIZE_SMALL),
                            padding: const EdgeInsets.all(2.5),
                            decoration: BoxDecoration(
                              color: redColor,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Text(
                              '40\%dto',
                              textAlign: TextAlign.start,
                              style: TextStyleApp.sb2().copyWith(
                                color: whiteColor,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                            margin: const EdgeInsets.only(left: MARGIN_SIZE_SMALL),
                            child: Text(
                              'Envio Gratis',
                              textAlign: TextAlign.start,
                              style: TextStyleApp.b1(),
                            ),
                          ),
                      const SizedBox(height: MARGIN_SIZE_SMALL),
                    ],
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
