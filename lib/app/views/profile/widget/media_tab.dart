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
              Container(),
              Container(),
              Container()
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


    // int crossAxisCount = _calculateCrossAxisCount(context);
//     return MediaQuery.removePadding(
//         context: context,
//         removeTop: true,
//         child: GridView(
//           physics: NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//             mainAxisSpacing: 5.0,
//             childAspectRatio: 0.9,
//             crossAxisSpacing: 5.0,
//           ),
//           children: [
//             Image(image: AssetImage(Assets.images.dessert.path)),
          
//           ],
//         ));
//   }
// }
