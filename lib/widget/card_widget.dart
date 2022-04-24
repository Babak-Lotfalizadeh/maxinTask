import 'package:flutter/material.dart';
import 'package:maxin_task/config/screen_values.dart';

class CardWidget extends StatelessWidget {
  final Widget child;

  const CardWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenValues.paddingNormal),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(ScreenValues.radiusNormal),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(ScreenValues.paddingNormal),
        child: child,
      ),
    );
  }
}
