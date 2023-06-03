import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kasifim_app/app/views/detail/widget/restaurant_images.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
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
            Text(
              '4.5',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.currency_lira,
              color: ColorName.orange,
            ),
            Text(
              ' 100 - 200  ',
              style: TextStyle(
                fontSize: 16,
              ),
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
            Text(' Üsküdar/İstanbul',
                style: TextStyle(
                  fontSize: 16,
                )),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.restaurant,
              color: ColorName.orange,
            ),
            Text(' Coffee, Dessert',
                style: TextStyle(
                  fontSize: 16,
                )),
          ],
        ),
      ]),

      //RestaurantImages(),
    ]);
  }
}
