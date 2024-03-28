import 'package:freezed_annotation/freezed_annotation.dart';

import 'local_parameters.dart';

part "local_model.freezed.dart";

@freezed
class LocalModel with _$LocalModel {
  const factory LocalModel.set(
          {required LocalParameter localSessionParameter}) =
      _LocalModelInsertSession;
  const factory LocalModel.get(
      {required LocalParameter localSessionParameter}) = _LocalModelGetSession;
  const factory LocalModel.remove(
          {required LocalParameter localSessionParameter}) =
      _LocalModelRemoveSession;
}
