import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class USSDIntroScreenPage extends GetView<USSDIntroScreenController> {
  static const ROUTE_NAME = "/maple-movil-ussd-introduction-screen";

  USSDIntroScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (controller.isFirstTime()) {
      return IntroductionScreen(
        pages: pages,
        done: const Text("Finalizar",
            style: TextStyle(fontWeight: FontWeight.w600)),
        onDone: () {
          controller.done();
        },
        next: const Icon(Icons.arrow_forward),
        showSkipButton: true,
        skip: const Text("Saltar"),
        onSkip: () {
          controller.skip();
        },
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Get.theme.colorScheme.secondary,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
      );
    } else {
      return USSDSingleProductMainScreen();
    }
  }

  static List<PageViewModel> pages = [
    PageViewModel(
      title: "Title of first page",
      body:
          "Here you can write the description of the page, to explain someting...",
      image: Center(
        child: Text("image in center"),
      ),
    ),
    PageViewModel(
      title: "page 2",
      body: "asdasdasdasd",
      image: Center(
        child: Text("image in center 2"),
      ),
    ),
    PageViewModel(
      title: "cool page 3",
      body: "hello world",
      image: Center(
        child: Text("image in center 3"),
      ),
    ),
  ];
}
