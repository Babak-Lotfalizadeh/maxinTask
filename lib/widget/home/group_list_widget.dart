import 'package:flutter/material.dart';
import 'package:maxin_task/config/screen_values.dart';
import 'package:maxin_task/providers/main_provider.dart';
import 'package:maxin_task/widget/check_box_widget.dart';
import 'package:maxin_task/widget/divider_widget.dart';
import 'package:maxin_task/widget/home/group_card_widget.dart';
import 'package:provider/provider.dart';

class GroupListWidget extends StatelessWidget {
  const GroupListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(builder: (context, mainProvider, child) {
      if (!mainProvider.haveData()) return Container();

      return ExpansionPanelList(
        expansionCallback: mainProvider.expansionCallback,
        elevation: 0,
        expandedHeaderPadding: EdgeInsets.zero,
        children: mainProvider.mainModel
                ?.map<ExpansionPanel>(
                  (item) => ExpansionPanel(
                    isExpanded: item.isExpanded,
                    canTapOnHeader: true,
                    backgroundColor: Colors.transparent,
                    headerBuilder: (context, isExpanded) => GroupCardWidget(
                      item: item,
                      isExpanded: isExpanded,
                    ),
                    body: Column(
                      children: [
                        const DividerWidget(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: ScreenValues.paddingNormal,
                          ),
                          child: ListView.builder(
                            padding: EdgeInsets.only(
                              top: ScreenValues.paddingLarge,
                            ),
                            primary: false,
                            shrinkWrap: true,
                            itemCount: item.tasks?.length ?? 0,
                            itemBuilder: (context, index) {
                              var _item = item.tasks?[index];
                              return CheckBoxWidget(
                                title: _item?.description ?? "",
                                value: _item?.checked ?? false,
                                onChanged: (newValue) {
                                  mainProvider.checked(_item);
                                },
                              );
                            },
                          ),
                        ),
                        const DividerWidget(),
                      ],
                    ),
                  ),
                )
                .toList() ??
            [],
      );
    });
  }
}
