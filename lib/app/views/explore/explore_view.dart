import 'package:flutter/material.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';

class LocationView extends StatelessWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: AppText.large('Google Map')),
    );
  }
}
