import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:kasifim_app/app/routes/routes.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
      overlays: []).then(
    (_) => runApp(MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: ColorName.orange),
        title: 'Flutter Demo',
        routes: pageRoutes);
  }
}
