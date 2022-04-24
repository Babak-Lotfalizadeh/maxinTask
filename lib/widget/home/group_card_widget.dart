import 'package:flutter/material.dart';
import 'package:maxin_task/config/screen_values.dart';
import 'package:maxin_task/model/main_model.dart';
import 'package:maxin_task/widget/home/group_trailing_widget.dart';

class GroupCardWidget extends StatelessWidget {
  final bool isExpanded;
  final MainModel item;

  const GroupCardWidget({
    Key? key,
    required this.isExpanded,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(
        left: ScreenValues.paddingNormal,
      ),
      horizontalTitleGap: 0,
      trailing: GroupTrailingWidget(isExpanded: isExpanded),
      title: Text(item.name ?? ""),
      leading: const Icon(Icons.assignment_outlined),
    );
  }
}
