import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app.locator.dart';

Future main() async {
  // Without this, the auth service doesn't work because is called before the runApp
  // See: https://stackoverflow.com/a/57775690/2584335
  WidgetsFlutterBinding.ensureInitialized();

  // Transparent status bar
  // See: https://stackoverflow.com/a/52492805/2584335
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  await setupLocator();

  //String initialRoute = Routes.logIn;
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    //  runApp(MyApp(initialRoute));
  });
}

class MyApp extends StatelessWidget {
  final String initialRoute;
  MyApp(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      title: 'Mi Lista de Shopping',
      //theme: wallEDTheme,
      //onGenerateRoute: StackedRouter().onGenerateRoute,
      initialRoute: initialRoute,
    );
  }
}
