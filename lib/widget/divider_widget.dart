import 'package:flutter/material.dart';
import 'package:maxin_task/config/screen_values.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: ScreenValues.borderNormal,
      thickness: ScreenValues.borderNormal,
      color: Theme.of(context).dividerColor,
    );
  }
}
