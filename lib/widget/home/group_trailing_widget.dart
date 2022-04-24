import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:maxin_task/config/screen_values.dart';

class GroupTrailingWidget extends StatelessWidget {
  final bool isExpanded;

  const GroupTrailingWidget({
    Key? key,
    required this.isExpanded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var strings = AppLocalizations.of(context);
    var title = isExpanded ? strings?.hide ?? "" : strings?.show ?? "";
    return Text(
      title,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
            fontSize: ScreenValues.fontSmall,
            color: Theme.of(context).iconTheme.color,
          ),
    );
  }
}
