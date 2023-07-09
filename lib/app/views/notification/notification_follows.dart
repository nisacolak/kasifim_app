import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class NotificationFollow extends StatelessWidget {
  const NotificationFollow({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> nearData = ['Item 1', 'Item 2', 'Item 3'];

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
                background: Container(
                  padding: EdgeInsets.all(3),
                  color: ColorName.orange,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: Icon(Icons.delete, color: Colors.white),
                    ),
                  ),
                ),
                onDismissed: (direction) {},
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            Assets.images.expressionless.provider(),
                      ),

                      title: Text('Lorem ipsum dolor sit eu.'), //25
                      subtitle:
                          Text('Lorem ipsum dolor sit amet gravida.'), //40
                    ),
                    Divider(
                      thickness: 0.8,
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
