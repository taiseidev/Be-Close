// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_sns_project/core/json_converters.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    required String id,
    required String content,
    required String userName,
    required String imageUrl,
    required List<String> toUser,
    @TimestampDateTimeConverter() DateTime? createdAt,
    @TimestampDateTimeConverter() DateTime? updatedAt,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
