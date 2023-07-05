import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/gen/fonts.gen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3))
        .then((value) => {Navigator.pushNamed(context, '/welcome')});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorName.orange,
        body: SafeArea(
          bottom: true,
          top: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.images.explore.path,
                  ),
                  const Text(
                    'Kaşifim',
                    style: TextStyle(
                        fontFamily: FontFamily.caveat,
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: ColorName.white),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
