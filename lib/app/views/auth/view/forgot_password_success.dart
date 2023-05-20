import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/welcome/widget/custom_button.dart';
import 'package:kasifim_app/app/views/welcome/widget/custom_text_button.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class ForgotPasswordSuccess extends StatelessWidget {
  const ForgotPasswordSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorName.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/change-password');
                    },
                    child: Image(image: Assets.images.success.provider()),
                  ),
                  AppText.title('Success'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText.small('Please check your email for create'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText.small(' a new password'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText.medium(
                        'Cant get email?',
                        color: ColorName.grey,
                      ),
                      CustomTextButton(
                        text: 'Resubmit',
                        onPressed: () {},
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  CustomButton(
                    text: 'Back Email',
                    backgroundColor: ColorName.orange,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ]),
          ),
        ));
  }
}
