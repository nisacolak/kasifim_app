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
  const FilterSliderPrice({Key, key}) : super(key: key);

  @override
  State<FilterSliderPrice> createState() => _FilterSliderPriceState();
}

class _FilterSliderPriceState extends State<FilterSliderPrice> {
  TextEditingController _startValueController = TextEditingController();
  TextEditingController _endValueController = TextEditingController();
  double _startValue = 0;
  double _endValue = 500;

  void _showDialog() {}

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
              if (values.end <= _startValue) {
                _endValue = _startValue;
              } else {
                _endValue = values.end;
              }
              _startValueController.text = _startValue.round().toString();
              _endValueController.text = _endValue.round().toString();
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8),
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
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                  textAlign: TextAlign.center,
                  controller: _startValueController,
                  onChanged: (value) {
                    setState(() {
                      try {
                        _startValue = double.parse(value);
                        if (_startValue > _endValue) {
                          _endValue = _startValue;
                          _endValueController.text =
                              _endValue.round().toString();
                        }
                      } catch (e) {
                        _startValue = 0;
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Error'),
                              content: Text('Please enter a valid value'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Back'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    });
                  },
                ),
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
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                  textAlign: TextAlign.center,
                  controller: _endValueController,
                  onChanged: (value) {
                    setState(() {
                      try {
                        _endValue = double.parse(value);
                        if (_startValue > _endValue) {
                          _endValue = _startValue;
                          _endValueController.text =
                              _endValue.round().toString();
                        }
                      } catch (e) {
                        _endValue = 500;
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Error'),
                              content: Text('Please enter a valid value'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Back'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    });
                  },
                ),
              ),
              // IconButton(
              //   onPressed: () {
              //     if (_startValue == _endValue) {
              //       setState(() {
              //         _endValue -= 50;
              //         _endValueController.text = _endValue.round().toString();
              //       });
              //       showDialog(
              //         context: context,
              //         builder: (BuildContext context) {
              //           return AlertDialog(
              //             title: Text('Error'),
              //             content: Text('Start and end values cannot be equal'),
              //             actions: [
              //               TextButton(
              //                 onPressed: () {
              //                   Navigator.of(context).pop();
              //                 },
              //                 child: Text('Back'),
              //               ),
              //             ],
              //           );
              //         },
              //       );
              //     }
              //   },
              //   icon: Icon(Icons.add),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
