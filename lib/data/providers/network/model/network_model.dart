import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_muhammad_riski/data/providers/network/model/network_parameters.dart';

part 'network_model.freezed.dart';

@freezed
class NetworkModel with _$NetworkModel {
  const factory NetworkModel.post(
      {required NetworkParameter networkParameter}) = _NetworkModelPost;

  const factory NetworkModel.get({required NetworkParameter networkParameter}) =
      _NetworkModelGet;
}
