import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/auth/widget/auth_field.dart';
import 'package:kasifim_app/app/views/welcome/widget/custom_button.dart';
import 'package:kasifim_app/app/views/welcome/widget/custom_text_button.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);
  final TextEditingController _forgotEmailController = TextEditingController();
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
                    AppText.title('Forgot Password'),
                    SizedBox(
                      height: 10,
                    ),
                    AppText.medium(
                      'Enter your registered email below',
                      color: ColorName.grey,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.medium(
                            'Email address',
                            color: ColorName.grey,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Form(
                            child: AuthField(
                              controller: _forgotEmailController,
                              obscureText: false,
                              prefixIcon: const Icon(
                                Icons.mail_outline,
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AppText.small('Remember the password?'),
                              CustomTextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  text: 'Sign in')
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(Assets.images.forgotPassword.path),
                    Center(
                      child: CustomButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, '/forgot-password-success');
                        },
                        backgroundColor: ColorName.orange,
                        text: 'Submit',
                      ),
                    ),
                  ]),
            )));
  }
}

// SizedBox _buildSpace(BuildContext context) =>
//     SizedBox(height: MediaQuery.of(context).size.height * 0.5);
