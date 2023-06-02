import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/network/models/menu_item.dart';

class MenuTab extends StatelessWidget {
  const MenuTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 15),
        child: Wrap(
            children: menuItems.map((e) {
          return Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 15, left: 15),
            child: Container(
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
                color: ColorName.green.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        top: 9,
                      ),
                      child: Text(
                        e.category,
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: menuItems.map((e) {
                        return Column(children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * .12,
                                  width:
                                      MediaQuery.of(context).size.width * .24,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        color: ColorName.customGrey,
                                        offset: Offset(
                                          2,
                                          2,
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
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        alignment: Alignment.center,
                                        image: AssetImage(
                                          e.itemPath,
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 2,
                                                  right: 0,
                                                  left: 10,
                                                  bottom: 6),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    e.name,
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            .05,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .5,
                                                    child: Text(
                                                      e.desc,
                                                      style: TextStyle(
                                                          color: ColorName
                                                              .darkGrey,
                                                          fontSize: 15,
                                                          fontStyle:
                                                              FontStyle.italic),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.currency_lira,
                                                        color: ColorName.orange,
                                                        size: 17,
                                                      ),
                                                      Text(
                                                        e.price,
                                                        style: TextStyle(
                                                            fontSize: 17,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: ColorName
                                                                .orange),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ]);
                      }).toList(),
                    )
                  ]),
            ),
          );
        }).toList()),
      ),
    );
  }
}
