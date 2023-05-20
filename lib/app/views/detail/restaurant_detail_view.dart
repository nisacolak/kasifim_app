import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/detail/widget/restaurant_tab_bar.dart';
import 'package:kasifim_app/app/views/home/widget/favorite_button.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class RestaurantDetail extends StatelessWidget {
  const RestaurantDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [FavoriteButton()],
        floating: false,
        snap: false,
        pinned: false,
        expandedHeight: 300,
        flexibleSpace: FlexibleSpaceBar(
          titlePadding: EdgeInsets.only(top: 0, left: 20, right: 0, bottom: 28),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Viyana Kahvesi'),
              Text('Coffee Shop', style: TextStyle(fontSize: 10)),
            ],
          ),
          background: Image.asset(
            Assets.images.dessert.path,
            fit: BoxFit.cover,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: Container(
            height: 20.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ColorName.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.0),
                topRight: Radius.circular(32.0),
              ),
            ),
          ),
        ),
      ),
      SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
        return _buildDetail(context);
      }, childCount: 1))
    ]));
    // SliverToBoxAdapter(
    //   child: _buildDetail(context),
    // ),
  }
}

Widget _buildDetail(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: 10, right: 5, left: 7),
    color: ColorName.white,
    child: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .07,
          width: MediaQuery.of(context).size.width * .85,
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Icon(
                    Icons.star_sharp,
                    color: ColorName.orange,
                  ),
                  AppText.small(' 4.3'),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.restaurant,
                    color: ColorName.orange,
                  ),
                  AppText.small(' Coffee, Dessert'),
                ],
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: ColorName.orange,
                  ),
                  AppText.small(' Üsküdar/İstanbul'),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.currency_lira,
                    color: ColorName.orange,
                  ),
                  AppText.small(' 100 - 200  '),
                ],
              ),
            ]),
          ]),
        ),
        SizedBox(
          height: 10,
        ),
        _buildRestaurantInfo(),
      ],
    ),
  );
}

Widget _buildRestaurantInfo() {
  return RestaurantTab();
}
