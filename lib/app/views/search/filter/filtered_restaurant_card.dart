import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/home/widget/favorite_button.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/network/dummy%20models/model.dart';

class FilteredRestaurantCards extends StatelessWidget {
  const FilteredRestaurantCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 4,
        children: sampleModel
            .map((item) => InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/restaurant-detail');
                  },
                  child: Container(
                    margin:
                        EdgeInsets.only(bottom: 5, right: 2, top: 4, left: 2),
                    height: MediaQuery.of(context).size.height * .27,
                    width: MediaQuery.of(context).size.width * .45,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: ColorName.customGrey,
                          offset: Offset(
                            2,
                            2,
                          ),
                          blurRadius: 3,
                        ), //BoxShadow
                        BoxShadow(
                          color: ColorName.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: ColorName.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .19,
                          width: MediaQuery.of(context).size.width * .46,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(item.thumbnailPath))),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [FavoriteButton(size: 20)]),
                        ),
                        //filtered restaurant card info
                        Container(
                          padding: EdgeInsets.only(
                            left: 4,
                            top: 3,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  AppText.medium(
                                    item.restaurantName,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  AppText.italic(
                                    item.categoryName,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          height: 14,
                                          width: 14,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle),
                                          child: Image.asset(
                                              Assets.images.nearby.path)),
                                      AppText.small(
                                        item.distance,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                          radius: 6,
                                          child: Image.asset(
                                              Assets.images.lira.path)),
                                      AppText.small(
                                        item.priceRange,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star_sharp,
                                        size: 18,
                                        color: ColorName.orange,
                                      ),
                                      AppText.small(
                                        item.rate.toString(),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ))
            .toList());
  }
}
