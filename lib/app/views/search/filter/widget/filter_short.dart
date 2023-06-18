import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class FilterShortEditor extends StatefulWidget {
  final bool isSelected;
  const FilterShortEditor({super.key, this.isSelected = false});

  @override
  State<FilterShortEditor> createState() => _FilterShortEditorState();
}

class _FilterShortEditorState extends State<FilterShortEditor> {
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
      backgroundColor: ColorName.red.withOpacity(0.1),
      label: Text(
        'Editor\'s',
        style: TextStyle(
          color: _isSelected ? ColorName.red : Colors.black,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: _isSelected ? ColorName.red : Colors.transparent,
        ),
      ),
      selectedColor: ColorName.red.withOpacity(0.1),
      avatar: Image.asset(Assets.images.editorsChoice.path),
      selected: _isSelected,
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
    );
  }
}

class FilterShortNearby extends StatefulWidget {
  final bool isSelected;
  const FilterShortNearby({super.key, this.isSelected = false});

  @override
  State<FilterShortNearby> createState() => _FilterShortNearbyState();
}

class _FilterShortNearbyState extends State<FilterShortNearby> {
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
      backgroundColor: ColorName.green.withOpacity(0.1),
      label: Text(
        'Nearby',
        style: TextStyle(
          color: _isSelected ? ColorName.green : Colors.black,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: _isSelected ? ColorName.green : Colors.transparent,
        ),
      ),
      selectedColor: ColorName.green.withOpacity(0.1),
      avatar: Image.asset(Assets.images.nearby.path),
      selected: _isSelected,
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
    );
  }
}

class FilterShortPopular extends StatefulWidget {
  final bool isSelected;
  const FilterShortPopular({super.key, this.isSelected = false});

  @override
  State<FilterShortPopular> createState() => _FilterShortPopularState();
}

class _FilterShortPopularState extends State<FilterShortPopular> {
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
      backgroundColor: ColorName.yellow.withOpacity(0.1),
      label: Text(
        'Popular',
        style: TextStyle(
          color: _isSelected ? ColorName.yellow : Colors.black,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: _isSelected ? ColorName.yellow : Colors.transparent,
        ),
      ),
      selectedColor: ColorName.yellow.withOpacity(0.1),
      avatar: Image.asset(Assets.images.popularRestaurants.path),
      selected: _isSelected,
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
    );
  }
}
