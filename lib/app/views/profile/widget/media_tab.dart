import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class MediaTab extends StatelessWidget {
  MediaTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid.count(
            crossAxisCount: 3,
            crossAxisSpacing: 5.2,
            childAspectRatio: 0.8,
            mainAxisSpacing: 5,
            children: [
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
              buildImage(),
            ]),
      ],
    );
  }
}

class buildImage extends StatelessWidget {
  const buildImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * .3,
        width: MediaQuery.of(context).size.width * .2,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                Assets.images.dessert.path,
              ),
              fit: BoxFit.cover),
        ));
  }
}
