import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kasifim_app/app/routes/routes.dart';
import 'package:kasifim_app/app/views/auth/modules/login_bloc.dart';
import 'package:kasifim_app/app/views/auth/modules/register_bloc.dart';
import 'package:kasifim_app/app/views/home/modules/home_view_bloc.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/network/local/isar/isar_client.dart';
import 'package:one_context/one_context.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [])
  await IsarLocalDatabase.instance.initIsar();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: [SystemUiOverlay.top])
      // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky)
      .then(
    (_) => runApp(MultiBlocProvider(providers: [
      BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(),
      ),
      BlocProvider<HomeViewBloc>(
        create: (context) => HomeViewBloc(),
      ),
      BlocProvider<RegisterBloc>(
        create: (context) => RegisterBloc(),
      ),
    ], child: KasifimApp())),
  );
}

class KasifimApp extends StatelessWidget {
  const KasifimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: OneContext().navigator.key,
        builder: OneContext().builder,
        theme: ThemeData(
          sliderTheme: SliderThemeData(
              activeTickMarkColor: Colors.transparent,
              inactiveTickMarkColor: Colors.transparent),
          primarySwatch: ColorName.orange,
        ),
        title: 'Flutter Demo',
        routes: pageRoutes);
  }
}
