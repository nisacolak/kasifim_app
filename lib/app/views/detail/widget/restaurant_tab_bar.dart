import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/detail/widget/menu_tab.dart';
import 'package:kasifim_app/app/views/detail/widget/directions_tab.dart';
import 'package:kasifim_app/app/views/detail/widget/reviews_tab.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class RestaurantTab extends StatefulWidget {
  RestaurantTab({Key? key}) : super(key: key);

  @override
  State<RestaurantTab> createState() => _RestaurantTabState();
}

class _RestaurantTabState extends State<RestaurantTab>
    with TickerProviderStateMixin {
  late final TabController rTabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rTabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: ColorName.white,
            ),
            child: DefaultTabController(
              length: 3,
              child: Column(children: [
                TabBar(
                    indicatorColor: ColorName.orange,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: ColorName.orange,
                    unselectedLabelColor: ColorName.grey,
                    controller: rTabController,
                    tabs: [
                      Tab(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.restaurant_menu,
                              size: 20,
                            ),
                            AppText.medium('  Menu'),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Icon(
                              Icons.chat,
                              size: 20,
                            ),
                            AppText.medium('  Reviews'),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 20,
                            ),
                            AppText.medium('Directions'),
                          ],
                        ),
                      ),
                    ]),
                Expanded(
                  child: TabBarView(
                      controller: rTabController,
                      children: [MenuTab(), ReviewsTab(), DirectionsTab()]),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
