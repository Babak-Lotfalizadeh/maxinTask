import 'package:flutter/material.dart';
import 'package:maxin_task/maxin_app.dart';
import 'package:maxin_task/providers/main_provider.dart';
import 'package:maxin_task/utilities/container.dart';
import 'package:provider/provider.dart';

void main() {
  setupServiceLocator();
  runApp(
    ChangeNotifierProvider<MainProvider>(
      create: (context) => MainProvider()..getMockData(),
      child: const MaxinApp(),
    ),
  );
}
