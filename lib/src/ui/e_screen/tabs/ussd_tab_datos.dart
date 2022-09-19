import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class USSDTabDatos {
  static Widget screen = USSDTabDatosScreen();

  static PersistentBottomNavBarItem item = PersistentBottomNavBarItem(
    icon: Icon(CupertinoIcons.shopping_cart),
    title: ("Paquetes"),
    activeColorPrimary: CupertinoColors.systemGreen,
    inactiveColorPrimary: CupertinoColors.systemGrey,
  );
}

class USSDTabDatosScreen extends GetView<USSDController> {
  USSDTabDatosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        USSDSliverAppBar(
          title: 'Paquetes',
        ),
        //el wrap para ponerlo dentro del scroll
        SliverToBoxAdapter(
          child: ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              controller.changeExpansion(
                  USSDGroupsDomain.DATOS_GROUP[index], isExpanded);
            },
            children: USSDGroupsDomain.DATOS_GROUP
                .map(
                  (item) => ExpansionPanel(
                    canTapOnHeader: true,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        leading: Icon(Icons.ac_unit),
                        title: item.title,
                      );
                    },
                    body: Column(
                      children: [
                        ...item.childs
                            .map(
                              (child) => child.widget,
                            )
                            .toList(),
                      ],
                    ),
                    isExpanded: controller.isExpandedGroup(item),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
