import 'package:freezed_annotation/freezed_annotation.dart';

import 'local_session_parameters.dart';

part "local_model.freezed.dart";

@freezed
class LocalModel with _$LocalModel {
  const factory LocalModel.insertSession(
          {required LocalSessionParameter localSessionParameter}) =
      _LocalModelInsertSession;
  const factory LocalModel.getSession(
          {required LocalSessionParameter localSessionParameter}) =
      _LocalModelGetSession;
}
