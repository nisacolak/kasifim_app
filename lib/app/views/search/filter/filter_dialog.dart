import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/search/filter/widget/close_button.dart';
import 'package:kasifim_app/app/views/search/filter/widget/filter_short.dart';

import 'package:kasifim_app/gen/colors.gen.dart';
import 'widget/filter_button..dart';
import 'widget/filter_category.dart';

import 'widget/filter_ratings.dart';

class FilterDialog extends StatelessWidget {
  const FilterDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: ColorName.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            StadiumCloseButton(),
            buildSpace(),
            Wrap(
              spacing: 10,
              children: [
                FilterSortEditor(),
                FilterSortNearby(),
                FilterSortPopular()
              ],
            ),
            //FilterRadioButton(),
            buildSpace(),
            FilterCategory(),

            FilterRatings(),

            FilterButtonsRow()
            //_filterText('Rate'),
            //FilterSlider(),
            //_filterText('Price Range'),
            //FilterSwitch(),
            // FilterButton(
            //   onPressed: () {},
            // ),
          ],
        ),
      ),
    );
  }
}

class buildSpace extends StatelessWidget {
  const buildSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .02,
    );
  }
}

class FilterButtonsRow extends StatelessWidget {
  const FilterButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FilterButton(
          onTap: () {
            Navigator.pushNamed(context, '/filtered-restaurants-advanced');
          },
          text: 'Advanced Filter',
        ),
        SizedBox(
            height: 35,
            child: VerticalDivider(
              thickness: 2,
            )),
        FilterButton(onTap: () {}, text: 'Filter')
      ],
    );
  }
}
