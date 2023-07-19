import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:kasifim_app/app/views/detail/widget/restaurant_images.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/network/dummy%20models/model.dart';
import 'package:readmore/readmore.dart';

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.lightGrey,
      //floatingActionButton: CustomFloatingAction(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 15, left: 10, right: 10),
          child: Column(
            children: [
              restaurantAddReview(),
              RestaurantImages(),
              SizedBox(
                height: 20,
              ),
              Column(
                  children: sampleUserModel.map((item) {
                return Column(children: [
                  Container(
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                      ),
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
                          color: ColorName.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CircleAvatar(
                                      backgroundImage: AssetImage(item.img)),
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AppText.basic(
                                              "Muhammed Cundullah Bozdağ",
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .08,
                                            ),
                                            RatingBar.builder(
                                              initialRating: item.star,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: false,
                                              itemCount: 5,
                                              itemSize: 14,
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: ColorName.orange,
                                              ),
                                              onRatingUpdate: (rating) {},
                                            ),
                                          ],
                                        ),
                                        AppText.medium(
                                          '23 followers',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                                Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: ReadMoreText(
                                      item.comment,
                                      trimLines: 2,
                                      trimMode: TrimMode.Line,
                                      trimCollapsedText: ' read more',
                                      trimExpandedText: ' read less',
                                      lessStyle: const TextStyle(
                                        color: ColorName.orange,
                                        fontSize: 14,
                                      ),
                                      moreStyle: const TextStyle(
                                        color: ColorName.orange,
                                        fontSize: 14,
                                      ),
                                    )),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .07,
                                    width:
                                        MediaQuery.of(context).size.width * .6,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      padding: const EdgeInsets.all(5),
                                      itemCount: 3,
                                      itemExtent: 70,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          margin: const EdgeInsets.only(
                                              left: 3, right: 3),
                                          decoration: BoxDecoration(
                                              color: ColorName.green,
                                              image: DecorationImage(
                                                  image: Assets
                                                      .images.breakfast2
                                                      .provider())),
                                        );
                                      },
                                    )),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    AppText.italic(
                                      'review date',
                                    )
                                  ],
                                ),
                              ]))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                ]);
              }).toList()),
            ],
          ),
        ),
      ),
    );
  }
}

class restaurantAddReview extends StatelessWidget {
  final TextEditingController addReview = TextEditingController();
  restaurantAddReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .16,
      constraints: BoxConstraints(maxHeight: double.infinity),
      color: ColorName.lightGrey,
      child: Column(
        children: [
          TextFormField(
              maxLines: 2,
              minLines: 2,
              controller: addReview,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.photo_camera),
                    onPressed: () {},
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: ColorName.grey)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: ColorName.grey)),
                  contentPadding: const EdgeInsets.all(20))),
          Container(
            height: MediaQuery.of(context).size.height * .04,
            color: ColorName.lightGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RatingBar.builder(
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemSize: 20,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: ColorName.orange,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: AppText.basic(
                    'Send',
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
