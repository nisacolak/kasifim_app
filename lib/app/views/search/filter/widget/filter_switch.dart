import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

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
            title: AppText.basic(
              'High to Low',
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
          CupertinoFormRow(
            child: CupertinoSwitch(
              activeColor: ColorName.orange,
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
            prefix: Text('Low to High'),
          ),
        ],
      ),
    );
  }
}
