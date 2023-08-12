import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kasifim_app/app/views/auth/modules/login_bloc.dart';

import 'package:kasifim_app/app/views/auth/widget/auth_field.dart';
import 'package:kasifim_app/app/views/auth/widget/password_field.dart';
import 'package:kasifim_app/app/views/auth/widget/specific_button.dart';

import 'package:kasifim_app/app/views/welcome/widget/custom_button.dart';
import 'package:kasifim_app/app/views/welcome/widget/custom_text_button.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/app/widgets/build_space.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final GlobalKey<FormState> _loginFormKey = GlobalKey();

  final TextEditingController _loginEmailController = TextEditingController();

  final TextEditingController _loginPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<LoginBloc>().add(LoginInitialEvent());
    });

    return BlocBuilder<LoginBloc, LoginStates>(
      builder: (context, state) {
        if (state is LoadingInitial) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is LoginSuccessState) {
          return _mainWidget(context, state);
        } else {
          return Center(
            child: Text("test"),
          );
        }
      },
    );
  }

  SafeArea _mainWidget(BuildContext context, LoginSuccessState state) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorName.white,
      body: Form(
        key: _loginFormKey,
        child: ListView(children: [
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSpace(),
                AppText.medium(
                  'Email',
                  color: ColorName.grey,
                ),
                buildSpaceSmall(),
                AuthField(
                  controller: _loginEmailController,
                  prefixIcon: const Icon(
                    Icons.mail_outline,
                  ),
                  hintText: 'example@example.com',
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSpace(),
                AppText.medium(
                  'Password',
                  color: ColorName.grey,
                ),
                buildSpaceSmall(),
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
            CustomButton(
              onPressed: () {
                // repository input
                context.read<LoginBloc>().add(LoginSuccessEvent(
                    email: _loginEmailController.text,
                    password: _loginPasswordController.text));
                //
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
}
