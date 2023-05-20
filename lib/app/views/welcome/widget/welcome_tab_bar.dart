import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/auth/view/login_view.dart';
import 'package:kasifim_app/app/views/auth/view/register_view.dart';
import 'package:kasifim_app/app/widgets/app_text.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class WelcomeTab extends StatefulWidget {
  const WelcomeTab({
    super.key,
  });

  @override
  State<WelcomeTab> createState() => _WelcomeTabState();
}

class _WelcomeTabState extends State<WelcomeTab> with TickerProviderStateMixin {
  late final TabController tabController;
  final emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      decoration: const BoxDecoration(
          color: ColorName.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35))),
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
                indicatorColor: ColorName.orange,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: ColorName.orange,
                unselectedLabelColor: ColorName.grey,
                controller: tabController,
                tabs: [
                  Tab(
                    child: AppText.medium(
                      'Create Account',
                    ),
                  ),
                  Tab(
                    child: AppText.medium(
                      'Login',
                    ),
                  ),
                ]),
            Expanded(
                child: TabBarView(
              controller: tabController,
              children: const [
                RegisterView(),
                LoginView(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
