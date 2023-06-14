import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class MediaTab extends StatelessWidget {
  MediaTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.lightGrey,
      body: GridView.builder(
          padding: EdgeInsets.only(top: 0, right: 15, left: 15),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: 0.8,
              crossAxisSpacing: 5.2,
              mainAxisSpacing: 5),
          itemCount: 20,
          itemBuilder: (BuildContext ctx, index) {
            return buildImage();
          }),
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
