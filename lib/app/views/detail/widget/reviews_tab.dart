import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/network/models/model.dart';

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15, left: 10, right: 10),
      child: Wrap(
          children: sampleUserModel.map((item) {
        return Container(
          constraints: BoxConstraints(
            maxWidth: double.infinity,
          ),
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width * 0.9,
          // height: MediaQuery.of(context).size.height * 0.14,
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
              color: ColorName.lightGrey,
              borderRadius: BorderRadius.circular(12)),

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(backgroundImage: AssetImage(item.img)),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 1, left: 6, top: 3, right: 0),
                          child: Column(
                            children: [
                              Text(
                                item.name,
                                style: TextStyle(fontSize: 16),
                              ),
                              Text('23 followers')
                            ],
                          ),
                        ),

                        // RatingBar.builder(
                        //   initialRating: item.star,
                        //   minRating: 1,
                        //   direction: Axis.horizontal,
                        //   allowHalfRating: true,
                        //   itemCount: 5,
                        //   itemSize: 18,
                        //   itemBuilder: (context, _) => Icon(
                        //     Icons.star,
                        //     color: ColorName.orange,
                        //   ),
                        //   onRatingUpdate: (rating) {},
                        // ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(item.comment),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('review date'),
                  ],
                ),
              ],
            ),
          ),
          // Container(
          //     width: MediaQuery.of(context).size.width * 0.8,
          //     height: 38,
          //     color: ColorName.grey,
          //     child: Text(
          //       item.comment,
          //       overflow: TextOverflow.ellipsis,
          //       maxLines: 3,
          //       style: TextStyle(fontSize: 17),
          //     ))
        );
      }).toList()),
    );
  }
}

class _reviewContainer extends StatelessWidget {
  const _reviewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
