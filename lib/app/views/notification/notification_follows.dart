import 'package:flutter/material.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class NotificationFollow extends StatefulWidget {
  const NotificationFollow({super.key});

  @override
  State<NotificationFollow> createState() => _NotificationFollowState();
}

class _NotificationFollowState extends State<NotificationFollow> {
  List<String> followData = ['Item 1', 'Item 2', 'Item 3'];
  int _selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView.builder(
            itemCount: followData.length,
            itemBuilder: (context, index) {
              final item = followData[index];
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
                          if (_selectedIndex == index) {
                            _selectedIndex = -1;
                          } else {
                            _selectedIndex = index;
                          }
                        });
                      },
                      child: Card(
                        elevation: 0,
                        color: _selectedIndex == index
                            ? Colors.white
                            : ColorName.orange.withOpacity(0.15),
                        child: ListTile(
                          leading: ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 27,
                            ),
                            child: Center(
                              child: Image(
                                image: AssetImage(
                                    Assets.images.expressionless.path),
                              ),
                            ),
                          ),
                          title: AppText.basic(item + ' Lorem ipsum laoreet'),
                          subtitle: AppText.small(
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
