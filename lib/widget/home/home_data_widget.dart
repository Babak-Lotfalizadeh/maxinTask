import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:maxin_task/config/screen_values.dart';
import 'package:maxin_task/providers/main_provider.dart';
import 'package:maxin_task/widget/card_widget.dart';
import 'package:maxin_task/widget/container_widget.dart';
import 'package:maxin_task/widget/home/group_list_widget.dart';
import 'package:maxin_task/widget/progress_field_widget.dart';
import 'package:provider/provider.dart';

class HomeDataWidget extends StatelessWidget {
  const HomeDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var strings = AppLocalizations.of(context);

    return CardWidget(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: ScreenValues.paddingNormal,
              top: ScreenValues.paddingLarge,
              bottom: ScreenValues.paddingNormal,
            ),
            child: Consumer<MainProvider>(
              builder: (context, mainProvider, child) => ProgressFieldWidget(
                title: strings?.groupedTasks ?? "",
                value: mainProvider.getMockDataPercent(),
              ),
            ),
          ),
          const ContainerWidget(
            child: GroupListWidget(),
          ),
        ],
      ),
    );
  }
}
