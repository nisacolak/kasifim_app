import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kasifim_app/app/views/auth/modules/register_bloc.dart';
import 'package:kasifim_app/app/views/auth/widget/auth_field.dart';
import 'package:kasifim_app/app/views/auth/widget/password_field.dart';
import 'package:kasifim_app/app/views/auth/widget/specific_button.dart';
import 'package:kasifim_app/app/views/welcome/widget/custom_button.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/assets.gen.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _registerEmailController =
      TextEditingController();

  final TextEditingController _registerPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<RegisterBloc>().add(RegisterInitialEvent());
    });

    return BlocBuilder<RegisterBloc, RegisterStates>(
      builder: (context, state) {
        if (state is RegisterInitial) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is RegisterSuccessState) {
          return _mainWidget(context, state);
        } else {
          return Center(
            child: Text("test"),
          );
        }
      },
    );
  }

  SafeArea _mainWidget(BuildContext context, RegisterSuccessState state) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorName.white,
      body: Form(
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
                context.read<RegisterBloc>().add(RegisterSuccessEvent(
                    name: _nameController.text,
                    email: _registerEmailController.text,
                    password: _registerPasswordController.text));
                //Navigator.pushNamed(context, '/home-body');
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
