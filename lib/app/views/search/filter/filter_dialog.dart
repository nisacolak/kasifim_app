import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/search/filter/widget/close_button.dart';
import 'package:kasifim_app/app/views/search/filter/widget/filter_slider.dart';
import 'package:kasifim_app/app/views/search/filter/widget/filter_switch.dart';

import 'package:kasifim_app/gen/colors.gen.dart';

import 'widget/filter_button.dart';
import 'widget/filter_category.dart';

class FilterDialog extends StatelessWidget {
  const FilterDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * .5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36),
          topRight: Radius.circular(36),
        ),
        color: Colors.white,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .7,
        width: MediaQuery.of(context).size.height * .6,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 10,
            ),
            StadiumCloseButton(),
            _buildSpace(),
            FilterCategory(),
            _filterText('Rate'),
            FilterSlider(),
            _filterText('Price Range'),
            FilterSwitch(),
            FilterButton(
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _filterText(String text) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        left: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: ColorName.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class _buildSpace extends StatelessWidget {
  const _buildSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
    );
  }
}
