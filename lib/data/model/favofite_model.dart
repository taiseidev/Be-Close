// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_sns_project/data/model/json_converters.dart';

part 'favofite_model.freezed.dart';
part 'favofite_model.g.dart';

@freezed
class FavofiteModel with _$FavofiteModel {
  const factory FavofiteModel({
    required String id,
    required String userId,
    required String postId,
    @TimestampDateTimeConverter() DateTime? createdAt,
    @TimestampDateTimeConverter() DateTime? updatedAt,
  }) = _FavofiteModel;

  factory FavofiteModel.fromJson(Map<String, dynamic> json) =>
      _$FavofiteModelFromJson(json);
}
