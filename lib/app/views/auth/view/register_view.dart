import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/auth/widget/auth_field.dart';
import 'package:kasifim_app/app/views/auth/widget/password_field.dart';
import 'package:kasifim_app/app/views/auth/widget/specific_button.dart';
import 'package:kasifim_app/app/views/welcome/widget/custom_button.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<FormState> _registerFormKey = GlobalKey();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _registerEmailController =
      TextEditingController();
  final TextEditingController _registerPasswordController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController;
    _registerEmailController.dispose();
    _registerPasswordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorName.white,
      body: Form(
        key: _registerFormKey,
        child: ListView(children: [
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSpace(),
                AppText.medium(
                  'Full Name',
                  color: ColorName.grey,
                ),
                _buildSpaceLittle(),
                AuthField(
                  controller: _nameController,
                  prefixIcon: const Icon(
                    Icons.person_2_outlined,
                  ),
                  hintText: 'enter your full name',
                ),
                _buildSpace(),
                AppText.medium(
                  'Email Address',
                  color: ColorName.grey,
                ),
                _buildSpaceLittle(),
                AuthField(
                    controller: _registerEmailController,
                    hintText: 'example@example.com',
                    prefixIcon: const Icon(Icons.mail_outlined))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSpace(),
                AppText.medium(
                  'Password',
                  color: ColorName.grey,
                ),
                _buildSpaceLittle(),
                PasswordField(
                  hintText: 'enter your password',
                  controller: _registerPasswordController,
                )
              ],
            ),
            _buildSpace(),
            CustomButton(
              onPressed: () {
                //_login();
                Navigator.pushNamed(context, '/home-body');
              },
              text: 'Register',
              backgroundColor: ColorName.orange,
            ),
            SpecificButton(
              labelText: 'Sign up with Google',
              imagePath: Assets.images.google.path,
              //onPressed: _googleSignIn()
            )
          ]),
        ]),
      ),
    ));
  }
}

SizedBox _buildSpace() => const SizedBox(
      height: 20,
    );

SizedBox _buildSpaceLittle() => const SizedBox(
      height: 5,
    );
