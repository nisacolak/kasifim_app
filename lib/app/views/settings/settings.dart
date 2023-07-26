import 'package:flutter/material.dart';
import 'package:kasifim_app/app/routes/custom_page_route.dart';
import 'package:kasifim_app/app/views/profile/widget/profile_avatar.dart';
import 'package:kasifim_app/app/views/profile/widget/profile_info.dart';
import 'package:kasifim_app/app/views/profile/view/profile_view.dart';
import 'package:kasifim_app/app/views/settings/profile_edit.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/app/widgets/build_space.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: ColorName.white,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: IconButton(
                  onPressed: () => Navigator.of(context)
                      .push(CustomPageRoute(child: ProfileTab())),
                  icon: Icon(
                    Icons.arrow_back,
                    color: ColorName.black,
                  )),
            )),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * .99,
            decoration: BoxDecoration(
                color: ColorName.lightGrey,
                borderRadius: BorderRadius.circular(20)),
            child: ListView(children: [
              buildSpace(),
              Container(
                  height: MediaQuery.of(context).size.height * .15,
                  width: MediaQuery.of(context).size.width * .14,
                  decoration: BoxDecoration(
                    color: ColorName.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileAvatar(),
                          profileBio(),
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 5,
                            child: IconButton(
                              icon: Icon(
                                Icons.edit,
                                size: 20,
                                color: ColorName.black,
                              ),
                              onPressed: () => Navigator.of(context)
                                  .push(CustomPageRoute(child: ProfileEdit())),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          )
                        ]),
                  )),
              buildSpace(),
              buildSettingsItem(
                height: MediaQuery.of(context).size.height * .10,
                onTap: () {},
                iconData: Icons.account_circle_outlined,
                text: 'Account Settings',
              ),
              buildSettingsItem(
                  text: 'Language', iconData: Icons.language, onTap: () {}),
              buildSettingsItem(
                  text: 'Rate Us', iconData: Icons.star_border, onTap: () {}),
              buildSettingsItem(
                  onTap: () {}, iconData: Icons.exit_to_app, text: 'Logout'),
            ]),
          ),
        ));
  }
}

class buildSettingsItem extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final IconData iconData;
  final double? height;
  const buildSettingsItem({
    super.key,
    required this.text,
    required this.iconData,
    required this.onTap,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        child: Card(
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      iconData,
                      size: 20,
                      color: ColorName.customGrey,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    AppText.regular(text, color: ColorName.grey),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: ColorName.grey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
