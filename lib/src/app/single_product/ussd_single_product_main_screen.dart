import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';

class USSDSingleProductMainScreen extends StatelessWidget {
  static const ROUTE_NAME = "/maple-movil-ussd-single-product-main-screen";

  late USSDIntroScreenController _introScreenController;

  USSDSingleProductMainScreen({Key? key}) : super(key: key) {
    _introScreenController = Get.find<USSDIntroScreenController>();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) {
          return _scaffold();
        },
      ),
    );
  }

  Widget _scaffold() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "USSD",
        ),
        actions: [
          IconButton(
            onPressed: () {
              _introScreenController.resetOpenApp();
            },
            icon: Tooltip(
              message: "Muestra de nuevo el introduction screen",
              child: Icon(
                Icons.lightbulb_circle_outlined,
              ),
            ),
          ),
          ThemeSwitcher(
            clipper: const ThemeSwitcherCircleClipper(),
            builder: (context) {
              Brightness br =
                  ThemeModelInheritedNotifier.of(context).theme.brightness;
              return IconButton(
                onPressed: () {
                  ThemeData l = ThemeData(
                    brightness: Brightness.light,
                    primarySwatch: Colors.orange,
                  );
                  ThemeData d = ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.brown,
                  );

                  if (br == Brightness.light) {
                    ThemeSwitcher.of(context).changeTheme(
                      theme: d,
                    );
                  } else {
                    ThemeSwitcher.of(context).changeTheme(
                      theme: l,
                    );
                  }
                },
                icon: Icon(
                  br == Brightness.light
                      ? Icons.format_paint_outlined
                      : Icons.format_paint,
                ),
              );
            },
          ),
        ],
      ),
      //body: USSDMainBody(),
      body: LoaderOverlay(
        useDefaultLoading: false,
        overlayWidget: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        overlayOpacity: 0.6,
        child: USSDMainBody(),
      ),
    );
  }
}
