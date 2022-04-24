import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:maxin_task/pages/home_page.dart';
import 'package:maxin_task/resource/app_theme.dart';

class MaxinApp extends StatelessWidget {
  const MaxinApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maxin',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: appThemeData,
      home: const HomePage(),
    );
  }
}
