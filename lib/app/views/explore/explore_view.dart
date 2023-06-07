import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/explore/explore_controller.dart';

class LocationView extends StatelessWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: 5,
        controller: PageController(initialPage: 0, viewportFraction: 1),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return VideoPlayerScreen();
        });
  }
}
