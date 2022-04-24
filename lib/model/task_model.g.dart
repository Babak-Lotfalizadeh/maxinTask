// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => TaskModel(
      description: json['description'] as String?,
      value: json['value'] as int?,
      checked: json['checked'] as bool?,
    );

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) => <String, dynamic>{
      'description': instance.description,
      'value': instance.value,
      'checked': instance.checked,
    };
