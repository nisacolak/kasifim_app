import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/home/widget/favorite_button.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/network/models/restaurant.dart';

//safiye.kayaa@hotmail.com
class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: sampleModel
            .map(
              (item) => InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/restaurant-detail',
                  );
                },
                child: Column(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * .2,
                        width: MediaQuery.of(context).size.width * .93,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: ColorName.customGrey,
                                offset: Offset(
                                  1,
                                  1,
                                ),
                                blurRadius: 3.0,
                                // spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: ColorName.white,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12)),
                            color: ColorName.green,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(item.thumbnailPath))),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: ColorName.green,
                                      borderRadius: BorderRadius.circular(4)),
                                  height: 20,
                                  width: 40,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star_rate_sharp,
                                        size: 18,
                                        color: ColorName.yellow,
                                      ),
                                      AppText.medium(
                                        item.rate.toString(),
                                        color: ColorName.white,
                                      ),
                                    ],
                                  ),
                                ),
                                const FavoriteButton(),
                              ],
                            ),
                          ),
                        ])),
                    Row(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height * .04,
                            width: MediaQuery.of(context).size.width * .94,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: ColorName.customGrey,
                                  offset: Offset(
                                    1,
                                    1,
                                  ),
                                  blurRadius: 3.0,
                                  // spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: ColorName.white,
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12)),
                              color: ColorName.white,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5.0, left: 7),
                                          child: AppText.large(
                                              item.restaurantName),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                size: 20,
                                              ),
                                              AppText.small('${item.rate}'),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),

                                // Row(
                                //   mainAxisAlignment:
                                //       MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     AppText.small('${item.categoryName}'),
                                //     AppText.medium(
                                //         'Price Range: ${item.priceRange}')
                                //   ],
                                // ),
                                // Row(
                                //   children: [
                                //     Icon(
                                //       Icons.location_on_outlined,
                                //       size: 17,
                                //     ),
                                //     AppText.small('${item.rate}'),
                                //   ],
                                // )
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            )
            .toList());
  }
}
