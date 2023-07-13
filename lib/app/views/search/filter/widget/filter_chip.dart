import 'package:flutter/material.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class CustomFilterChip extends StatefulWidget {
  final String text;
  final bool isSelected;

  const CustomFilterChip(
      {Key? key, required this.text, this.isSelected = false})
      : super(key: key);

  @override
  _CustomFilterChipState createState() => _CustomFilterChipState();
}

class _CustomFilterChipState extends State<CustomFilterChip> {
  bool _isSelected = false;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      selectedColor: ColorName.orange.withOpacity(0.1),
      checkmarkColor: ColorName.orange,
      label: AppText.medium(
        widget.text,
        color: _isSelected ? ColorName.orange : Colors.black,
      ),
      backgroundColor: ColorName.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: _isSelected ? ColorName.orange : Colors.black,
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
