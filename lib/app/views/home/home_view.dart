import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/home/widget/category_container.dart';
import 'package:kasifim_app/app/views/home/widget/circle_container.dart';
import 'package:kasifim_app/app/views/home/widget/restaurant_card.dart';
import 'package:kasifim_app/app/views/search/search_box.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

// const List<String> list = <String>['Home', 'Work'];

class HomeView extends StatefulWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController homeSearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(54),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            actions: [
              homeAppBar(homeSearchController: homeSearchController),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 0, right: 10, left: 10),
        child: ListView(children: [
          _buildSpace(context),
          const _mainContainer(),
          _buildSpace(context),
          _buildSpace(context),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Eat what makes you happy',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          _buildSpace(context),
          CategoryContainer(),
          _buildSpace(context),
          _buildSpace(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '127 Restaurants around you',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.swap_vert_outlined,
                        size: 20,
                      ),
                      Text(
                        'Popular',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          _buildSpace(context),
          RestaurantCard(),
        ]),
      ),
    );
  }

  SizedBox _buildSpace(BuildContext context) =>
      SizedBox(height: MediaQuery.of(context).size.height * 0.015);
}

class homeAppBar extends StatelessWidget {
  const homeAppBar({
    super.key,
    required this.homeSearchController,
  });

  final TextEditingController homeSearchController;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CircleContainer(
        color: ColorName.orange,
        widget: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.location_on_outlined,
            size: 23,
            color: ColorName.white,
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      SearchContainer(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.06,
        hintText: 'search',
        controller: homeSearchController,
        child: FilterShow(),
      ),
      SizedBox(
        width: 10,
      ),
      CircleContainer(
        widget: Image(
          image: Assets.images.account.provider(),
        ),
      ),
      SizedBox(
        width: 10,
      )
    ]);
  }
}

class _mainContainer extends StatelessWidget {
  const _mainContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.20,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: ColorName.customGrey,
              offset: Offset(
                1,
                1,
              ),
              blurRadius: 3.0,
              // spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: ColorName.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
          image: DecorationImage(
              image: Assets.images.bckgnd.provider(), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(24),
          color: ColorName.yellow),
    );
  }
}
