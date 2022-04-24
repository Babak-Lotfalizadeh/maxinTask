import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:maxin_task/config/static_values.dart';
import 'package:maxin_task/model/main_model.dart';

class MainAPIService {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: StaticValues.baseUrl,
      responseType: ResponseType.json,
    ),
  );

  Future<List<MainModel>?> getMuckData() async {
    try {
      var response = await _dio.get<List<dynamic>>(StaticValues.randomUrl);
      var listData = List.generate(response.data?.length ?? 0, (index) {
        return MainModel.fromJson(response.data?[index]);
      });
      return listData;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }
}
