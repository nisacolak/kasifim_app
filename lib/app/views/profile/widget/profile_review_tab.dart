import 'package:flutter/material.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class ProfileReviewTab extends StatelessWidget {
  const ProfileReviewTab({Key? key}) : super(key: key);
  final String review =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sed sapien augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris pretium nulla dolor.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.lightGrey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 0),
              decoration: BoxDecoration(
                  color: ColorName.white,
                  boxShadow: const [
                    BoxShadow(
                      color: ColorName.customGrey,
                      offset: Offset(
                        2,
                        2,
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
                  borderRadius: BorderRadius.circular(12)),
              height: MediaQuery.of(context).size.height * .27,
              width: MediaQuery.of(context).size.width * .9,
              child: buildReview(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildReview(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'RestaurantName',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .04,
                width: MediaQuery.of(context).size.width * .13,
                //color: ColorName.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('5'),
                    CircleAvatar(
                      child: Image.asset(Assets.images.star.path),
                      radius: 17,
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .001,
        ),
        Text(
          review,
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .01,
        ),
        Container(
            // color: ColorName.yellow,
            height: MediaQuery.of(context).size.height * .06,
            width: MediaQuery.of(context).size.width * .55,
            child: reviewImageList()),
        SizedBox(
          height: MediaQuery.of(context).size.height * .01,
        ),
        Container(
          height: MediaQuery.of(context).size.height * .02,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AppText.italic(
                '2 months ago',
              )
            ],
          ),
        )
      ],
    );
  }
}

class reviewImageList extends StatelessWidget {
  const reviewImageList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        separatorBuilder: (context, index) => SizedBox(
              width: 3,
            ),
        itemBuilder: (context, index) {
          return Container(
            child: Image.asset(
              Assets.images.breakfast.path,
            ),
          );
        });
  }
}
