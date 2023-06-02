import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class RestaurantImages extends StatefulWidget {
  const RestaurantImages({Key? key}) : super(key: key);

  @override
  State<RestaurantImages> createState() => _RestaurantImagesState();
}

class _RestaurantImagesState extends State<RestaurantImages> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              if (selectedIndex > 0) {
                selectedIndex--;
              }
            });
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
          color: ColorName.orange,
        ),
        SizedBox(
          height: 80,
          child: Container(
            width: MediaQuery.of(context).size.width * .71,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // Örnek olarak bir öğe sayısı belirtin
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(left: 3, right: 3),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        Assets.images.breakfast.path,
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                );
              },
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              if (selectedIndex < 9) {
                selectedIndex++;
              }
            });
          },
          icon: Icon(
            Icons.arrow_forward_ios,
            size: 20,
          ),
          color: ColorName.orange,
        ),
      ],
    );
  }
}
