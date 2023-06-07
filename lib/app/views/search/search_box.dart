import 'package:flutter/material.dart';

import 'package:kasifim_app/app/views/search/filter/filter_dialog.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class SearchContainer extends StatelessWidget {
  final Widget? child;
  final TextEditingController controller;
  final String hintText;
  final double width;
  final double height;

  const SearchContainer({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.width,
    required this.height,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: ColorName.orange.withOpacity(0.1),
          borderRadius: BorderRadius.circular(28)),
      child: TextFormField(
        controller: controller,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 15),
            border: InputBorder.none,
            hintStyle: TextStyle(color: ColorName.orange, fontSize: 16),
            hintText: hintText,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(
                Icons.search_sharp,
                color: ColorName.orange,
              ),
            ),
            suffixIcon: child),
      ),
    );
  }
}

class FilterShow extends StatelessWidget {
  const FilterShow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: ColorName.orange,
        borderRadius: BorderRadius.circular(28),
      ),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
              elevation: 0,
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (BuildContext context) {
                return FilterDialog();
              });
        },
        child: Center(
            child: Icon(
          Icons.tune_sharp,
          color: ColorName.white,
          size: 23,
        )),
      ),
    );
  }
}
