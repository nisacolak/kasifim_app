import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/home/widget/circle_container.dart';
import 'package:kasifim_app/app/views/home/widget/favorite_button.dart';
import 'package:kasifim_app/app/views/search/search_box.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/network/models/restaurant.dart';

class FavoritesView extends StatelessWidget {
  final TextEditingController favSearchController = TextEditingController();
  FavoritesView({Key? key}) : super(key: key);

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
              favoritesSearch(favSearchController: favSearchController)
            ],
          )),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                    // boxShadow: const [
                    //   BoxShadow(
                    //     color: ColorName.customGrey,
                    //     offset: Offset(
                    //       1,
                    //       1,
                    //     ),
                    //     blurRadius: 3.0,
                    //     // spreadRadius: 2.0,
                    //   ), //BoxShadow
                    //   BoxShadow(
                    //     color: ColorName.white,
                    //     offset: Offset(0.0, 0.0),
                    //     blurRadius: 0.0,
                    //     spreadRadius: 0.0,
                    //   ), //BoxShadow
                    // ],
                    borderRadius: BorderRadius.circular(12),
                    color: ColorName.lightGrey),
                child: Wrap(
                    children: sampleModel.map((item) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7, right: 5),
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.1,
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
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                alignment: Alignment.center,
                                image: AssetImage(
                                  item.thumbnailPath,
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppText.large(item.restaurantName),
                                        FavoriteButton(
                                          size: 25,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        AppText.medium(
                                          item.categoryName,
                                          color: ColorName.grey,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.star_sharp,
                                          color: ColorName.orange,
                                          size: 20,
                                        ),
                                        AppText.medium(item.rate.toString()),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }).toList()),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class favoritesSearch extends StatelessWidget {
  const favoritesSearch({
    super.key,
    required this.favSearchController,
  });

  final TextEditingController favSearchController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleContainer(
          color: ColorName.orange.withOpacity(0.1),
          widget: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home-body');
              },
              icon: Icon(
                Icons.arrow_back_sharp,
                color: ColorName.orange,
              )),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SearchContainer(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.06,
              hintText: 'search in favorites',
              controller: favSearchController,
              child: FilterShow(),
            )),
        CircleContainer(
          widget: Image(
            image: Assets.images.account.provider(),
          ),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
