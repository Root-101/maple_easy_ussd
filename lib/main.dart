import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_ussd/src/app/theme/theme_exporter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(SplashScreen());
}

class USSDApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Set portrait orientation.
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return ThemeProvider(
      initTheme: CustomTheme.lightThemeData,
      builder: (context, myTheme) {
        return _app(myTheme);
      },
    );
  }
}

Widget _app(ThemeData theme) {
  return GetMaterialApp(
    title: 'Fácil *133#',
    debugShowCheckedModeBanner: false,
    //--------------------- <THEAMING> -----------------------------------
    theme: theme,
    //--------------------- <PAGINATION> -----------------------------------
    initialRoute: USSDIntroScreenPage.ROUTE_NAME,
    getPages: [
      GetPage(
        name: USSDIntroScreenPage.ROUTE_NAME,
        page: () => USSDIntroScreenPage(),
        transition: Transition.leftToRight,
      ),
      GetPage(
        name: USSDSingleProductMainScreen.ROUTE_NAME,
        page: () => USSDSingleProductMainScreen(),
        transition: Transition.rightToLeft,
      ),
    ],
    /*unknownRoute: GetPage(
          name: UnknownRouteScreen.ROUTE_NAME,
          page: () => UnknownRouteScreen()),*/
    //--------------------- </PAGINATION> -----------------------------------
  );
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          FlutterNativeSplash.remove();
          return USSDApp();
        } else {
          return Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
      },
    );
  }
}

class Init {
  Init._();

  static final instance = Init._();

  Future initialize() async {
    await USSDSingleProductModule.init();
  }
}
