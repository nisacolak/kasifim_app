import 'package:flutter/material.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/network/dummy%20models/restaurant.dart';

class CategoryContainer extends StatelessWidget {
  final Restaurant? restaurant;
  const CategoryContainer({
    super.key,
    this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 125,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: sampleModel.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.18,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: ColorName.customGrey,
                                offset: Offset(
                                  1,
                                  2,
                                ),
                                blurRadius: 1,
                                spreadRadius: 3.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: ColorName.white,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage(sampleModel[index].categoryPath),
                            )),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      AppText.small(
                        sampleModel[index].categoryName,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
