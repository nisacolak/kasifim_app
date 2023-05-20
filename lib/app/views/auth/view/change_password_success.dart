//nexus5
//pixel 3xl
import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/welcome/widget/custom_button.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class ChangePasswordSuccess extends StatelessWidget {
  const ChangePasswordSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Image.asset(Assets.images.success.path),
              AppText.title('Success'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText.small('Congratulations your password has'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText.small('been changed'),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              CustomButton(
                text: 'Sign in',
                backgroundColor: ColorName.orange,
                onPressed: () {
                  Navigator.pushNamed(context, '/home-body');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
