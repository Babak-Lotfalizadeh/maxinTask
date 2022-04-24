import 'package:flutter/material.dart';
import 'package:maxin_task/providers/main_provider.dart';
import 'package:maxin_task/widget/home/home_data_widget.dart';
import 'package:maxin_task/widget/loading_widget.dart';
import 'package:maxin_task/widget/scaffold_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      body: Consumer<MainProvider>(
        builder: (context, mainProvider, child) => mainProvider.loading
            ? const LoadingWidget()
            : const HomeDataWidget(),
      ),
    );
  }
}
