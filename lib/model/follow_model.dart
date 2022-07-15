// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_sns_project/core/json_converters.dart';

part 'follow_model.freezed.dart';
part 'follow_model.g.dart';

@freezed
class FollowModel with _$FollowModel {
  const factory FollowModel({
    required String id,
    required String following,
    required String followed,
    @TimestampDateTimeConverter() DateTime? createdAt,
    @TimestampDateTimeConverter() DateTime? updatedAt,
  }) = _FollowModel;

  factory FollowModel.fromJson(Map<String, dynamic> json) =>
      _$FollowModelFromJson(json);
}
