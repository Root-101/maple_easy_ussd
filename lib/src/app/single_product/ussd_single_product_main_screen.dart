import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:loader_overlay/loader_overlay.dart';

class USSDSingleProductMainScreen extends StatelessWidget {
  static const ROUTE_NAME = "/maple-movil-ussd-single-product-main-screen";

  USSDSingleProductMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) {
          return LoaderOverlay(
            useDefaultLoading: false,
            overlayWidget: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            overlayOpacity: 0.6,
            child: USSDMainBody(),
          );
        },
      ),
    );
  }
}
