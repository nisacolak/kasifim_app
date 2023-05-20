import 'package:flutter/material.dart';
import 'filter_chip.dart';

class FilterCategory extends StatelessWidget {
  const FilterCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomFilterChip(text: 'vegan'),
          _buildSpace(),
          CustomFilterChip(text: 'casual'),
          _buildSpace(),
          CustomFilterChip(text: 'coffee'),
          _buildSpace(),
          CustomFilterChip(text: 'fine'),
        ],
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
    return SizedBox(
      width: 10,
    );
  }
}
