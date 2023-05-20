import 'package:flutter/material.dart';

class FilterSlider extends StatefulWidget {
  @override
  _FilterSliderState createState() => _FilterSliderState();
}

class _FilterSliderState extends State<FilterSlider> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .7,
      child: Slider(
        value: _value,
        min: 0,
        max: 5,
        divisions: 5,
        label: _value.round().toString(),
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
      ),
    );
  }
}
