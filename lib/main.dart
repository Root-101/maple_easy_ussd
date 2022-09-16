import 'package:flutter/material.dart';
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
    return GetMaterialApp(
      title: 'Fácil *133#',
      //--------------------- <THEAMING> -----------------------------------
      darkTheme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
      ),
      //--------------------- </THEAMING> -----------------------------------
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
