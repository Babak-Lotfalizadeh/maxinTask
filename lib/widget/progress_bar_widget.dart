import 'package:flutter/material.dart';
import 'package:maxin_task/config/screen_values.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressBarWidget extends StatelessWidget {
  final double value;

  const ProgressBarWidget(this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _text() {
      return SizedBox(
        height: ScreenValues.progressBarHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${(value * 100).round()}%",
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontSize: ScreenValues.fontXSmall,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ],
        ),
      );
    }

    double getLeftPadding(double maxWidth) {
      var width = maxWidth - ScreenValues.paddingNormal;
      width -= (ScreenValues.progressBarHeight * 2.5);
      return (width * value);
    }

    return Stack(
      children: [
        LinearPercentIndicator(
          animation: true,
          lineHeight: ScreenValues.progressBarHeight,
          animationDuration: 1000,
          animateFromLastPercent: true,
          percent: value,
          backgroundColor:
              Theme.of(context).colorScheme.primary.withOpacity(0.05),
          barRadius: Radius.circular(ScreenValues.radiusLarge),
          progressColor: Theme.of(context).colorScheme.primary,
        ),
        LayoutBuilder(
          builder: (context, constraints) => Padding(
            padding: EdgeInsets.only(
              left: getLeftPadding(constraints.maxWidth),
            ),
            child: _text(),
          ),
        ),
      ],
    );
  }
}
