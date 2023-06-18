import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class FilterSliderDistance extends StatefulWidget {
  @override
  _FilterSliderDistanceState createState() => _FilterSliderDistanceState();
}

class _FilterSliderDistanceState extends State<FilterSliderDistance> {
  double _value = 0.5;
//0.5 - 20 km arası
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _value,
      min: 0.5,
      max: 20.0,
      divisions: 10,
      label: '${_value.round().toString()} km',
      onChanged: (value) {
        setState(() {
          _value = value;
        });
      },
    );
  }
}

class FilterSliderPrice extends StatefulWidget {
  const FilterSliderPrice({super.key});

  @override
  State<FilterSliderPrice> createState() => _FilterSliderPriceState();
}

class _FilterSliderPriceState extends State<FilterSliderPrice> {
  double _startValue = 0;
  double _endValue = 500;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RangeSlider(
          min: 0,
          max: 500,
          divisions: 10,
          labels: RangeLabels(
            _startValue.round().toString(),
            _endValue.round().toString(),
          ),
          values: RangeValues(_startValue, _endValue),
          onChanged: (values) {
            setState(() {
              _startValue = values.start;
              _endValue = values.end;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('min : '),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * .04,
                width: MediaQuery.of(context).size.width * .1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorName.darkGrey, width: 1)),
                child: Text('${_startValue.round().toString()}'),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .1,
              ),
              Text('max : '),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * .04,
                width: MediaQuery.of(context).size.width * .1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorName.darkGrey, width: 1)),
                child: Text('${_endValue.round().toString()}'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
