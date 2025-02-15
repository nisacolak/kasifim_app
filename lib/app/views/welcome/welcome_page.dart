import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kasifim_app/app/views/welcome/widget/custom_button.dart';
import 'package:kasifim_app/app/views/welcome/widget/welcome_tab_bar.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/app/widgets/build_space.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorName.white,
        body: Container(
          color: ColorName.black,
          child: Stack(children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.6,
                child: Image.asset(
                  Assets.images.welcome2.path,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                  AppText.welcome(
                    'Welcome',
                  ),
                  buildSpace(),
                  AppText.welcomeSubtitle(
                    'Before Enjoying FoodMedia Services \n Please Register First',
                    color: ColorName.white,
                  ),
                  buildSpace(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: CustomButton(
                      backgroundColor: ColorName.orange,
                      text: 'Create Account',
                      onPressed: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (BuildContext context) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  WelcomeTab(),
                                ],
                              );
                            });
                      },
                    ),
                  ),
                  buildSpace(),
                  CustomButton(
                    backgroundColor: ColorName.orangeShade,
                    labelColor: ColorName.orange,
                    text: 'Login',
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                WelcomeTab(),
                              ],
                            );
                          });
                    },
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
