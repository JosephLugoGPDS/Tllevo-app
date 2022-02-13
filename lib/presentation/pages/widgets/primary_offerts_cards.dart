
import 'package:flutter/material.dart';
import 'package:tllevo/core/values/dimension.dart';

class PrimaryOffertsCards extends StatelessWidget {
  const PrimaryOffertsCards();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final int key = index+1;
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(RADIUS_SIZE_SMALL),
              image: DecorationImage(
              image: AssetImage('assets/hor_$key.png'),
              fit: BoxFit.cover,
              ), 
            ),
            margin: const EdgeInsets.symmetric(horizontal: MARGIN_SIZE_DEFAULT),
            height: 160,
            width: MediaQuery.of(context).size.width-MARGIN_SIZE_DEFAULT*4,
          );
        },
      ),
    );
  }
}