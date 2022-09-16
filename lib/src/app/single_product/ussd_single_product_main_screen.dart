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
              ))
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
