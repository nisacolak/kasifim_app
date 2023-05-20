import 'package:flutter/material.dart';

import 'package:kasifim_app/app/views/auth/widget/auth_field.dart';
import 'package:kasifim_app/app/views/auth/widget/password_field.dart';
import 'package:kasifim_app/app/views/auth/widget/specific_button.dart';
import 'package:kasifim_app/app/views/welcome/widget/custom_button.dart';
import 'package:kasifim_app/app/views/welcome/widget/custom_text_button.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<StatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey();
  final TextEditingController _loginEmailController = TextEditingController();
  final TextEditingController _loginPasswordController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _loginEmailController.dispose();
    _loginPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return SafeArea(
        child: Scaffold(
      body: Form(
        key: _loginFormKey,
        child: ListView(children: [
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSpace(),
                AppText.medium(
                  'Email',
                  color: ColorName.grey,
                ),
                _buildSpaceLittle(),
                AuthField(
                  controller: _loginEmailController,
                  prefixIcon: const Icon(
                    Icons.mail_outline,
                  ),
                  obscureText: false,
                  hintText: 'example@example.com',
                ),
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
                  controller: _loginPasswordController,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgot-password');
                    },
                    text: 'forgot my password')
              ],
            ),
            _buildSpace(),
            CustomButton(
              onPressed: () {
                //_login();
                Navigator.pushNamed(context, '/home-body');
              },
              text: 'Login',
              backgroundColor: ColorName.orange,
            ),
            SpecificButton(
              labelText: 'Login with Google',
              imagePath: Assets.images.google.path,
              //onPressed: _googleSignIn()
            )
          ]),
        ]),
      ),
    ));
  }

  // void _login() {
  //   final isValid = _formKey.currentState?.validate();
  //   if (isValid != null && isValid) {
  //     final request = LoginRequest(
  //         email: _emailController.text, password: _passwordController.text);
  //     ref.read(loginControllerProvider.notifier).login(request);
  //   }
  // }

  SizedBox _buildSpace() => const SizedBox(
        height: 20,
      );
}

SizedBox _buildSpaceLittle() => const SizedBox(
      height: 5,
    );
