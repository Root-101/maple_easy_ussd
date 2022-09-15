import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDMainBody extends GetView<USSDController> {
  const USSDMainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<USSDController>(builder: (_) {
      return SingleChildScrollView(
        child: Container(
          child: ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              controller.changeExpansion(index, isExpanded);
            },
            children: [
              buildFavorite(controller),
              ...controller.itemsToExpand
                  .map(
                    (item) => ExpansionPanel(
                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          leading: Text('${item.groupId}'),
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
            ],
          ),
        ),
      );
    });
  }

  ExpansionPanel buildFavorite(USSDController controller) {
    USSDGroupsDomain favoriteGroup = controller.items[0];
    List<USSDActionWidgetDomain> favorites = controller.findFavorites();
    return ExpansionPanel(
      canTapOnHeader: true,
      headerBuilder: (BuildContext context, bool isExpanded) {
        return ListTile(
          leading: Text('${favoriteGroup.groupId}'),
          title: favoriteGroup.title,
        );
      },
      body: favorites.isEmpty
          ? Center(
              child: Text('No hay favoritos'),
            )
          : Column(
              children: [
                ...favorites
                    .map(
                      (child) => child.widget,
                    )
                    .toList(),
              ],
            ),
      isExpanded: controller.isExpandedGroup(controller.items[0]),
    );
  }
}
