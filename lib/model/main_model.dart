import 'package:json_annotation/json_annotation.dart';
import 'package:maxin_task/model/task_model.dart';

part 'main_model.g.dart';

@JsonSerializable()
class MainModel {
  String? name;
  List<TaskModel>? tasks;
  @JsonKey(ignore: true)
  bool isExpanded;

  MainModel({
    this.name,
    this.tasks,
    this.isExpanded = false,
  });

  factory MainModel.fromJson(Map<String, dynamic> json) =>
      _$MainModelFromJson(json);
  Map<String, dynamic> toJson() => _$MainModelToJson(this);

  int getTotal() {
    int result = 0;
    tasks?.forEach((element) {
      result += element.value ?? 0;
    });

    return result;
  }

  int getProgress() {
    int result = 0;
    tasks?.forEach((element) {
      if (element.checked == true) {
        result += element.value ?? 0;
      }
    });

    return result;
  }
}
