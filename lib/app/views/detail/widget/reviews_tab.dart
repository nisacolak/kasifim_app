import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kasifim_app/app/views/detail/widget/expandable_text.dart';
import 'package:kasifim_app/app/views/detail/widget/restaurant_images.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/network/models/model.dart';

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
              // Divider(
              //   thickness: 2,
              // ),
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
                          color: ColorName.lightGrey,
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
                                        Text(
                                          item.name,
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Text('23 followers'),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('review date'),
                                    ),
                                  ),
                                ]),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: item.star,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 18,
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: ColorName.orange,
                                      ),
                                      onRatingUpdate: (rating) {},
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: ExpandableText(text: item.comment),
                                ),
                                SizedBox(
                                  height: 45,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 3, right: 3),
                                        width: 60,
                                        height: 50,
                                        color: Colors.green,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 3, right: 3),
                                        width: 60,
                                        height: 50,
                                        color: Colors.green,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 3, right: 3),
                                        width: 60,
                                        height: 50,
                                        color: Colors.green,
                                      ),
                                    ],
                                  ),
                                )
                              ])))
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
  TextEditingController addReview = TextEditingController();
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
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 18,
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
                      borderRadius: BorderRadius.circular(
                          8.0), // İstenilen kenar yarıçapı değeri
                    ),
                  ),
                  child: Text(
                    'Send',
                    style: TextStyle(
                      fontSize: 16,
                    ),
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
