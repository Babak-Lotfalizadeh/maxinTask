import 'package:flutter/material.dart';
import 'package:maxin_task/config/screen_values.dart';

class ContainerWidget extends StatelessWidget {
  final Widget child;

  const ContainerWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(ScreenValues.radiusNormal),
        ),
        border: Border.all(
          width: ScreenValues.borderNormal,
          color: Theme.of(context).dividerColor,
        ),
      ),
      child: child,
    );
  }
}
