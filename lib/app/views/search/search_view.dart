import 'package:flutter/material.dart';

import 'package:kasifim_app/app/views/home/widget/circle_container.dart';
import 'package:kasifim_app/app/views/search/action_chip.dart';

import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(children: [
                        CircleContainer(
                          color: ColorName.orange,
                          widget: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.location_on_outlined,
                                color: ColorName.white,
                              )),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        //ChooseLocation(),
                      ])
                    ],
                  ),
                  Column(children: [
                    Row(children: [
                      CircleContainer(
                        widget: Image(
                          image: Assets.images.account.provider(),
                        ),
                      ),
                    ])
                  ]),
                ],
              ),
              //SearchContainer(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 8,
                  left: 25,
                  bottom: 8,
                ),
                child: Row(
                  children: [
                    CustomActionChip(
                      text: 'CategoryName',
                      backgroundColor: Colors.blue,
                      labelColor: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
