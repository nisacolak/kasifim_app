import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class NotificationRestaurant extends StatefulWidget {
  const NotificationRestaurant({Key? key});

  @override
  State<NotificationRestaurant> createState() => _NotificationRestaurantState();
}

class _NotificationRestaurantState extends State<NotificationRestaurant> {
  List<String> nearData = ['Item 1', 'Item 2', 'Item 3'];
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView.builder(
            itemCount: nearData.length,
            itemBuilder: (context, index) {
              final item = nearData[index];
              return Dismissible(
                key: Key(item),
                direction: DismissDirection.endToStart,
                background: Card(
                  elevation: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: ColorName.orange,
                    ),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(Icons.delete, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                onDismissed: (direction) {},
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (selectedIndex == index) {
                            selectedIndex = -1;
                          } else {
                            selectedIndex = index;
                          }
                        });
                      },
                      child: Card(
                        elevation: 0,
                        color: selectedIndex == index
                            ? Colors.white
                            : ColorName.orange.withOpacity(0.15),
                        child: ListTile(
                          leading: ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 27,
                            ),
                            child: Center(
                              child: Image(
                                image:
                                    AssetImage(Assets.images.restaurant.path),
                              ),
                            ),
                          ),
                          title: Text(item + ' Lorem ipsum laoreet'),
                          subtitle: Text(
                              '$item + Lorem ipsum dolor sit amet, consectetur adipiscing elit dui.'),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
