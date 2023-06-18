import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class FilterRadioButton extends StatefulWidget {
  const FilterRadioButton({
    super.key,
  });

  @override
  State<FilterRadioButton> createState() => _FilterRadioButtonState();
}

class _FilterRadioButtonState extends State<FilterRadioButton> {
  late String selectedOption;

  void initState() {
    super.initState();
    selectedOption = 'Option 1';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RadioListTile(
            title: Text('Option'),
            dense: true,
            value: 'Option 1',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
          ),
        ),
        Expanded(
          child: RadioListTile(
            title: Text('Option'),
            value: 'Option 2',
            dense: true,
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
          ),
        ),
        Expanded(
          child: RadioListTile(
            title: Text('Option'),
            dense: true,
            tileColor: ColorName.green,
            selectedTileColor: ColorName.yellow,
            value: 'Option 3',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
