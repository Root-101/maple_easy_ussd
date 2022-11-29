import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class USSDPlansTab {
  static Widget body = USSDPlansTabBody();

  static PersistentBottomNavBarItem item = PersistentBottomNavBarItem(
    icon: Icon(CupertinoIcons.shopping_cart),
    title: ("Paquetes"),
    activeColorPrimary: CupertinoColors.systemGreen,
    inactiveColorPrimary: CupertinoColors.systemGrey,
  );
}

class USSDPlansTabBody extends StatelessWidget {
  USSDPlansTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        USSDSliverAppBar(
          title: 'Paquetes',
        ),
        //el wrap para ponerlo dentro del scroll
        SliverToBoxAdapter(
          child: GetBuilder<USSDPlansController>(builder: (controller) {
            return ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                controller.changeExpansion(
                    USSDPlansWidgets.GROUPS[index], isExpanded);
              },
              children: USSDPlansWidgets.GROUPS
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
                        children: item.childs,
                      ),
                      isExpanded: controller.isExpandedGroup(item),
                    ),
                  )
                  .toList(),
            );
          }),
        ),
      ],
    );
  }
}
