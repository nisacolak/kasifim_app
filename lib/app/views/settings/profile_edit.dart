import 'package:flutter/material.dart';
import 'package:kasifim_app/app/routes/custom_page_route.dart';
import 'package:kasifim_app/app/views/auth/widget/auth_field.dart';
import 'package:kasifim_app/app/views/auth/widget/password_field.dart';

import 'package:kasifim_app/app/views/settings/settings.dart';
import 'package:kasifim_app/app/views/welcome/widget/custom_button.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class ProfileEdit extends StatefulWidget {
  ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  TextEditingController updateName = TextEditingController();
  TextEditingController updateEmail = TextEditingController();
  TextEditingController updateBio = TextEditingController();
  TextEditingController updatePassword = TextEditingController();
  TextEditingController updatePasswordConfirm = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorName.white,
          elevation: 0,
          title: Text(
            'update user information',
            style: TextStyle(color: ColorName.grey),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
                onPressed: () => Navigator.of(context)
                    .push(CustomPageRoute(child: ProfileSettings())),
                icon: Icon(
                  Icons.arrow_back,
                  color: ColorName.black,
                )),
          )),
      body: SingleChildScrollView(
        child: Form(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildSpace(),
                  AppText.medium(
                    'Name',
                    color: ColorName.darkGrey,
                  ),
                  buildSpace(),
                  AuthField(
                    controller: updateName,
                  ),
                  buildSpace(),
                  AppText.medium(
                    'Bio',
                    color: ColorName.darkGrey,
                  ),
                  buildSpace(),
                  UpdateBio(
                    controller: updateBio,
                  ),
                  AppText.medium(
                    'Email',
                    color: ColorName.darkGrey,
                  ),
                  buildSpace(),
                  AuthField(
                    controller: updateEmail,
                  ),
                  buildSpace(),
                  AppText.medium(
                    'Password',
                    color: ColorName.darkGrey,
                  ),
                  buildSpace(),
                  PasswordField(
                    controller: updatePassword,
                  ),
                  buildSpace(),
                  AppText.medium(
                    'Confirm Password',
                    color: ColorName.darkGrey,
                  ),
                  buildSpace(),
                  PasswordField(
                    controller: updatePasswordConfirm,
                  ),
                  buildSpace(),
                  CustomButton(
                      onPressed: () {},
                      text: 'Update',
                      labelColor: ColorName.orange,
                      backgroundColor: ColorName.orangeShade),
                ]),
          ),
        ),
      ),
    );
  }
}

class UpdateBio extends StatelessWidget {
  final TextEditingController controller;
  UpdateBio({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .15,
      width: MediaQuery.of(context).size.width * 0.70,
      child: TextFormField(
          maxLines: 4,
          minLines: 2,
          controller: controller,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: ColorName.grey)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: ColorName.orange),
              ),
              contentPadding: const EdgeInsets.all(22))),
    );
  }
}
