import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/gen/fonts.gen.dart';

class ProfileReviewTab extends StatelessWidget {
  const ProfileReviewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: ColorName.yellow.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12)),
              height: MediaQuery.of(context).size.height * .24,
              width: MediaQuery.of(context).size.width * .9,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    buildReview(context),
                    SizedBox(
                      width: 10,
                    ),
                    VerticalDivider(
                      thickness: 2,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .25,
                      width: MediaQuery.of(context).size.width * .25,
                      decoration: BoxDecoration(
                        //color: ColorName.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Transform.scale(
                            scale: 0.9,
                            child: Image(
                              image: AssetImage(Assets.images.rateBadge.path),
                            ),
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
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

  Container buildReview(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .36,
      width: MediaQuery.of(context).size.width * .50,
      //color: ColorName.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'RestaurantName',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in maximus justo, porttitor imperdiet purus. Proin id mi.',
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * .06,
              width: MediaQuery.of(context).size.width * .66,
              child: ListView.separated(
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
                  }))
        ],
      ),
    );
  }
}
