import 'package:flutter/foundation.dart';
import 'package:maxin_task/model/main_model.dart';
import 'package:maxin_task/model/task_model.dart';
import 'package:maxin_task/services/main_api_service.dart';
import 'package:maxin_task/utilities/container.dart';

class MainProvider extends ChangeNotifier {
  bool _loading = true;
  List<MainModel>? _mainModel;
  List<MainModel>? get mainModel => _mainModel;
  bool get loading => _loading;

  void expansionCallback(panelIndex, isExpanded) {
    _mainModel?[panelIndex].isExpanded = !isExpanded;
    notifyListeners();
  }

  bool haveData() {
    return mainModel != null && mainModel?.isNotEmpty == true;
  }

  void getMockData() async {
    _loading = true;
    notifyListeners();
    _mainModel = await getIt<MainAPIService>().getMuckData();
    _loading = false;
    notifyListeners();
  }

  void checked(TaskModel? item) {
    item?.checked = !(item.checked ?? false);
    notifyListeners();
  }

  double getMockDataPercent() {
    int total = 0;
    int progress = 0;
    _mainModel?.forEach((element) {
      total += element.getTotal();
      progress += element.getProgress();
    });
    return progress * 100 / total / 100;
  }
}
