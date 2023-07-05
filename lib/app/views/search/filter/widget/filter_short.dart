import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class FilterSortEditor extends StatefulWidget {
  final bool isSelected;
  const FilterSortEditor({super.key, this.isSelected = false});

  @override
  State<FilterSortEditor> createState() => _FilterSortEditorState();
}

class _FilterSortEditorState extends State<FilterSortEditor> {
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

class FilterSortNearby extends StatefulWidget {
  final bool isSelected;
  const FilterSortNearby({super.key, this.isSelected = false});

  @override
  State<FilterSortNearby> createState() => _FilterSortNearbyState();
}

class _FilterSortNearbyState extends State<FilterSortNearby> {
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

class FilterSortPopular extends StatefulWidget {
  final bool isSelected;
  const FilterSortPopular({super.key, this.isSelected = false});

  @override
  State<FilterSortPopular> createState() => _FilterSortPopularState();
}

class _FilterSortPopularState extends State<FilterSortPopular> {
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
