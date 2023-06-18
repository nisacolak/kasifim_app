import 'package:flutter/material.dart';
import 'filter_chip.dart';

class FilterCategory extends StatelessWidget {
  const FilterCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: [
        CustomFilterChip(text: 'vegan'),
        CustomFilterChip(text: 'casual'),
        CustomFilterChip(text: 'turkish cusine'),
        CustomFilterChip(text: 'coffee'),
        CustomFilterChip(text: 'fine'),
        CustomFilterChip(text: 'breakfast'),
        CustomFilterChip(text: 'fastfood'),
      ],
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
