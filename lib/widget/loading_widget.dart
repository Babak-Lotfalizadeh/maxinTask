import 'package:flutter/material.dart';
import 'package:maxin_task/config/screen_values.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(ScreenValues.paddingLarge),
        child: const CircularProgressIndicator(),
      ),
    );
  }
}
