// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/gen/fonts.gen.dart';
import 'package:kasifim_app/network/local/isar/collection/restaurant_data.dart';

import 'border_favorite.dart';

// ignore: must_be_immutable
class RestaurantCard extends StatelessWidget {
  List<RestaurantDatas?> restaurant;
  RestaurantCard({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: restaurant
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
                        height: MediaQuery.of(context).size.height * .24,
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
                                image:
                                    AssetImage(Assets.images.breakfast.path))),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: ColorName.orange,
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
                                        '${item!.rate!}',
                                        color: ColorName.white,
                                      ),
                                    ],
                                  ),
                                ),
                                BorderFavoriteButton(),
                                // FavoriteButton(
                                //   size: 25,
                                // ),
                              ],
                            ),
                          ),
                        ])),
                    Row(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height * .05,
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
                                              top: 7, left: 8),
                                          child: Text(
                                            item.name!,
                                            style: TextStyle(
                                                fontFamily:
                                                    FontFamily.proximaNova,
                                                fontWeight: FontWeight.w700,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 18),
                                          ),
                                          // AppText.large(
                                          //     item.restaurantName),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(right: 3, top: 7),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .03,
                                      width: MediaQuery.of(context).size.width *
                                          .14,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 20,
                                          ),
                                          AppText.basic(
                                            '${item.priceRange}',
                                            fontFamily: FontFamily.proximaNova,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ],
                                      ),
                                    )
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
