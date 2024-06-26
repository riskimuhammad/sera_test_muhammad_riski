import 'dart:convert';

import 'package:test_muhammad_riski/data/models/session/session_model.dart';
import 'package:test_muhammad_riski/data/providers/local/contract.dart';
import 'package:test_muhammad_riski/data/providers/local/model/local_model.dart';
import 'package:test_muhammad_riski/data/providers/local/model/local_parameters.dart';
import 'package:test_muhammad_riski/data/providers/local/model/local_result.dart';
import 'package:test_muhammad_riski/domain/repository/local_repository.dart';

class LocalRepositoryImpl extends LocalRepository {
  Box box;
  LocalRepositoryImpl(this.box);
  @override
  Future<LocalResult> token(SessionModel model) async {
    LocalResult localResult;
    try {
      localResult = await box.callBox(
          method: LocalModel.set(
              localSessionParameter:
                  LocalParameter(value: model.token, key: 'token')));
    } catch (e) {
      localResult = const LocalResult.failure(data: 'error tidak di ketahui');
    }
    return localResult;
  }

  @override
  Future<LocalResult> getToken() async {
    LocalResult localResult;
    try {
      localResult = await box.callBox(
          method: LocalModel.get(
              localSessionParameter: LocalParameter(key: 'token')));
    } catch (e) {
      localResult = const LocalResult.failure(data: 'error tidak di ketahui');
    }
    return localResult;
  }

  @override
  Future<LocalResult> session(SessionModel model) async {
    LocalResult localResult;
    try {
      localResult = await box.callBox(
          method: LocalModel.set(
              localSessionParameter: LocalParameter(
                  value: jsonEncode(model.toJson()), key: 'session')));
    } catch (e) {
      localResult = const LocalResult.failure(data: 'error tidak di ketahui');
    }
    return localResult;
  }

  @override
  Future<LocalResult> deleteSession() async {
    LocalResult localResult;
    try {
      localResult = await box.callBox(
          method: LocalModel.remove(
              localSessionParameter: LocalParameter(key: 'session')));
    } catch (e) {
      localResult = const LocalResult.failure(data: 'error tidak di ketahui');
    }
    return localResult;
  }

  @override
  Future<LocalResult> deleteToken() async {
    LocalResult localResult;
    try {
      localResult = await box.callBox(
          method: LocalModel.remove(
              localSessionParameter: LocalParameter(key: 'token')));
    } catch (e) {
      localResult = const LocalResult.failure(data: 'error tidak di ketahui');
    }
    return localResult;
  }

  @override
  Future<LocalResult> getsession() async {
    LocalResult localResult;
    try {
      localResult = await box.callBox(
          method: LocalModel.get(
              localSessionParameter: LocalParameter(key: 'session')));
    } catch (e) {
      localResult = const LocalResult.failure(data: 'error tidak di ketahui');
    }
    return localResult;
  }
}
