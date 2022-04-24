import 'package:flutter/material.dart';
import 'package:maxin_task/config/screen_values.dart';
import 'package:maxin_task/widget/progress_bar_widget.dart';

class ProgressFieldWidget extends StatelessWidget {
  final String title;
  final double value;

  const ProgressFieldWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: ScreenValues.paddingNormal),
          child: ProgressBarWidget(value),
        ),
      ],
    );
  }
}
