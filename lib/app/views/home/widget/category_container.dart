import 'package:flutter/material.dart';
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: sampleModel
            .map((item) => Container(
                margin: EdgeInsets.only(right: 18),
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.height * 0.12,
                //decoration: BoxDecoration(color: ColorName.grey),
                child: Stack(children: [
                  Image.asset(
                    item.categoryPath,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 5,
                    right: 3,
                    child: Text(
                      item.categoryName,
                      textAlign: TextAlign.center,
                      // overflow: TextOverflow.fade,
                      style: TextStyle(color: ColorName.black, fontSize: 13),
                    ),
                  )
                ])))
            .toList(),
      ),
    );
  }
}

class _buildSpace extends StatelessWidget {
  const _buildSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}
