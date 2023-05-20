import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class ProfileReviewTab extends StatelessWidget {
  const ProfileReviewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: ColorName.yellow.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12)),
              height: MediaQuery.of(context).size.height * .15,
              width: MediaQuery.of(context).size.width * .9,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    buildReview(context),
                    VerticalDivider(),
                    Container(
                      height: MediaQuery.of(context).size.height * .25,
                      width: MediaQuery.of(context).size.width * .25,
                      decoration: BoxDecoration(
                        //color: ColorName.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(Assets.images.rateBadge2.path),
                          ),
                          Text('rate')
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox buildReview(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .30,
      width: MediaQuery.of(context).size.width * .50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'RestaurantName',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in maximus justo, porttitor imperdiet purus. Proin id mi.',
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
