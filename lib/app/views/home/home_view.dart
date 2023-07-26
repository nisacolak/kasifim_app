import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kasifim_app/app/views/home/modules/home_view_bloc.dart';
import 'package:kasifim_app/app/views/home/widget/category_container.dart';

import 'package:kasifim_app/app/views/home/widget/restaurant_card.dart';
import 'package:kasifim_app/app/views/search/search_box.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/app/widgets/build_space.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:badges/badges.dart' as badges;

class HomeView extends StatelessWidget {
  HomeView({
    Key? key,
  }) : super(key: key);

  TextEditingController homeSearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeViewBloc>().add(HomeViewLoadingEvent());
    });

    return BlocBuilder<HomeViewBloc, HomeViewStates>(
      builder: (context, state) {
        if (state is HomeViewLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is HomeViewSuccessState) {
          return _mainWidget(context, state);
        } else {
          return Center(child: Text("error"));
        }
      },
    );
  }

  SafeArea _mainWidget(BuildContext context, HomeViewSuccessState state) {
    return SafeArea(
      child: Scaffold(
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
            buildSpaceSmall(),
            const _mainContainer(),
            buildSpaceSmall(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.title(
                  'Eat what makes you happy',
                  color: ColorName.orange,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            CategoryContainer(),
            Row(
              children: [
                AppText.large(
                  '${state.restaurantCount}',
                  fontWeight: FontWeight.bold,
                  color: ColorName.orange,
                ),
                AppText.large(
                  ' Restaurants around you',
                  color: ColorName.orange,
                  //color: Color.fromARGB(255, 67, 67, 67),
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            buildSpaceSmall(),
            RestaurantCard(
              restaurant: state.restaurants,
            ),
          ]),
        ),
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
      Container(
        height: MediaQuery.of(context).size.height * .04,
        width: MediaQuery.of(context).size.width * .12,
        decoration: BoxDecoration(
          color: ColorName.white,
          shape: BoxShape.circle,
        ),
        child: GestureDetector(
            onTap: () {},
            child: Image.asset(
              Assets.images.locationOn.path,
              scale: 3,
            )),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * .02,
      ),
      SearchContainer(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.06,
        hintText: 'search',
        controller: homeSearchController,
        child: FilterShow(),
      ),
      SizedBox(
        width: 5,
      ),
      CircleAvatar(
        backgroundColor: ColorName.lightGrey,
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/notifications');
          },
          icon: badges.Badge(
              position: badges.BadgePosition.topEnd(top: 1.5, end: 0),
              child: Image.asset(
                Assets.images.notification.path,
                fit: BoxFit.cover,
              )),
        ),
      ),
      SizedBox(
        width: 12,
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
