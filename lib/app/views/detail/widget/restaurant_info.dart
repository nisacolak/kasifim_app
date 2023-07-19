import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';

import 'package:kasifim_app/gen/colors.gen.dart';

class buildRestaurantInfo extends StatelessWidget {
  const buildRestaurantInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            RatingBar.builder(
              initialRating: 3.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 22,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: ColorName.orange,
              ),
              onRatingUpdate: (rating) {},
            ),
            SizedBox(
              width: 5,
            ),
            AppText.basic(
              '4.5',
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.currency_lira,
              color: ColorName.orange,
            ),
            AppText.basic(
              ' 100 - 200  ',
            ),
          ],
        ),
      ]),
      SizedBox(
        height: 5,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: ColorName.orange,
            ),
            AppText.basic(
              ' Üsküdar/İstanbul',
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.restaurant,
              color: ColorName.orange,
            ),
            AppText.basic(
              ' Coffee, Dessert',
            ),
          ],
        ),
      ]),

      //RestaurantImages(),
    ]);
  }
}
