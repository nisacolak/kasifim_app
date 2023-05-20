import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/auth/widget/password_field.dart';
import 'package:kasifim_app/app/views/welcome/widget/custom_button.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({Key? key}) : super(key: key);
  final TextEditingController _changePasswordController =
      TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.title('Change New Password'),
                  AppText.medium(
                    'Enter your registered email below',
                    color: ColorName.grey,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  AppText.medium(
                    'New Password',
                    color: ColorName.grey,
                  ),
                  _buildSpace(context),
                  PasswordField(
                    controller: _confirmPasswordController,
                  ),
                  _buildSpace(context),
                  _buildSpace(context),
                  AppText.medium(
                    'Confirm Password',
                    color: ColorName.grey,
                  ),
                  _buildSpace(context),
                  PasswordField(
                    controller: _changePasswordController,
                  ),
                  Image.asset(Assets.images.resetPassword.path),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.4,
                  // ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, '/change-password-success');
                        },
                        text: 'Reset Password',
                        backgroundColor: ColorName.orange),
                  ])
                ],
              ),
            )));
  }

  SizedBox _buildSpace(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.01,
      );
}
