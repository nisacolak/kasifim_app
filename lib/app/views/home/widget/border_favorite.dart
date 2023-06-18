import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class BorderFavoriteButton extends StatefulWidget {
  const BorderFavoriteButton({super.key});

  @override
  State<BorderFavoriteButton> createState() => _BorderFavoriteButtonState();
}

class _BorderFavoriteButtonState extends State<BorderFavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorName.green,
      //width: MediaQuery.of(context).size.width,
    );
  }
}
