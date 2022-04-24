import 'package:get_it/get_it.dart';
import 'package:maxin_task/services/main_api_service.dart';

final GetIt getIt = GetIt.instance;

setupServiceLocator() {
  getIt.registerSingleton<MainAPIService>(MainAPIService());
}
