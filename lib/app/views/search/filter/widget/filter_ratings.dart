import 'package:flutter/material.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';

import 'package:kasifim_app/gen/colors.gen.dart';

class FilterRatings extends StatelessWidget {
  const FilterRatings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 5,
        children: [
          FilterRate(text: '1'),
          FilterRate(text: '2'),
          FilterRate(text: '3'),
          FilterRate(text: '4'),
          FilterRate(text: '5'),
        ],
      ),
    );
  }
}

class FilterRate extends StatefulWidget {
  final String text;
  final bool isSelected;
  const FilterRate({super.key, required this.text, this.isSelected = false});

  @override
  State<FilterRate> createState() => _FilterRateState();
}

class _FilterRateState extends State<FilterRate> {
  bool _isSelected = false;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      showCheckmark: false,
      avatar: Icon(
        Icons.star,
        color: _isSelected ? ColorName.orange : ColorName.customYellow,
        size: 20,
      ),
      //Image.asset(Assets.images.star.path),
      selectedColor: ColorName.orange.withOpacity(0.1),
      checkmarkColor: ColorName.orange,
      label: AppText.medium(
        widget.text,
        color: _isSelected ? ColorName.orange : ColorName.darkGrey,
      ),
      backgroundColor: ColorName.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: _isSelected ? ColorName.orange : ColorName.darkGrey,
        ),
      ),
      selected: _isSelected,
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
    );
  }
}
