import 'package:flutter/material.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';

class FilterSwitch extends StatefulWidget {
  FilterSwitch({Key? key}) : super(key: key);

  @override
  State<FilterSwitch> createState() => _FilterSwitchState();
}

class _FilterSwitchState extends State<FilterSwitch> {
  bool _highToLow = false;
  bool _lowToHigh = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SwitchListTile(
            title: Text(
              'High to Low',
              style: TextStyle(fontSize: 16),
            ),
            value: _highToLow,
            onChanged: (newValue) {
              setState(() {
                _highToLow = newValue;
                if (_highToLow) {
                  _lowToHigh = false;
                }
              });
            },
          ),
          SwitchListTile(
            title: Text(
              'Low to High',
              style: TextStyle(fontSize: 16),
            ),
            value: _lowToHigh,
            onChanged: (newValue) {
              setState(() {
                _lowToHigh = newValue;
                if (_lowToHigh) {
                  _highToLow = false;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
