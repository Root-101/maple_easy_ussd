import 'package:flutter/material.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:loader_overlay/loader_overlay.dart';

class USSDMainScreen extends StatelessWidget {
  static const ROUTE_NAME = "/maple-src-main-screen";

  USSDMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "USSD",
        ),
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
