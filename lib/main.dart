import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:kasifim_app/app/routes/routes.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [])
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: [SystemUiOverlay.top])
      // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky)
      .then(
    (_) => runApp(MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
