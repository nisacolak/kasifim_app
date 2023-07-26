import 'package:flutter/material.dart';
import 'package:kasifim_app/app/routes/custom_page_route.dart';
import 'package:kasifim_app/app/views/auth/widget/auth_field.dart';
import 'package:kasifim_app/app/views/auth/widget/password_field.dart';
import 'package:kasifim_app/app/views/profile/widget/profile_avatar.dart';
import 'package:kasifim_app/app/views/settings/settings.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/app/widgets/build_space.dart';
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
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            actions: [
              TextButton(
                  onPressed: () {},
                  child: AppText.large(
                    'Kaydet',
                    color: ColorName.orange,
                  )),
            ],
            backgroundColor: ColorName.white,
            elevation: 0,
            title:
                AppText.basic('update user information', color: ColorName.grey),
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
        body: SafeArea(
            child: Form(
          child: ListView(children: [
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: ProfileAvatar(),
                ),
                buildSpace(),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: AppText.medium(
                    'Name',
                    color: ColorName.darkGrey,
                  ),
                ),
                buildSpace(),
                AuthField(
                  controller: updateName,
                ),
                buildSpace(),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: AppText.medium(
                    'Bio',
                    color: ColorName.darkGrey,
                  ),
                ),
                buildSpace(),
                UpdateBio(
                  controller: updateBio,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: AppText.medium(
                    'Email',
                    color: ColorName.darkGrey,
                  ),
                ),
                buildSpace(),
                AuthField(
                  controller: updateEmail,
                ),
                buildSpace(),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: AppText.medium(
                    'Password',
                    color: ColorName.darkGrey,
                  ),
                ),
                buildSpace(),
                PasswordField(
                  controller: updatePassword,
                ),
                buildSpace(),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: AppText.medium(
                    'Confirm Password',
                    color: ColorName.darkGrey,
                  ),
                ),
                buildSpace(),
                PasswordField(
                  controller: updatePasswordConfirm,
                ),
              ]),
            ]),
          ]),
        )));
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
      height: MediaQuery.of(context).size.height * .12,
      width: MediaQuery.of(context).size.width * .70,
      child: TextFormField(
          autofillHints: [],
          maxLines: 2,
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
