import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:test_muhammad_riski/data/providers/local/model/local_model.dart';
import 'package:test_muhammad_riski/data/providers/local/box/local_contract.dart';
import 'package:get_storage/get_storage.dart';

class BoxContractImplementation extends BoxContract {
  @override
  Future<String> box({required LocalModel method}) async {
    final box = GetStorage('box-test-riski');
    try {
      return await method.when(
        set: (localSessionParameter) {
          box.write(localSessionParameter.key, localSessionParameter.value);
          return 'done';
        },
        get: (localSessionParameter) async {
          final res = await box.read(localSessionParameter.key) ?? '';
          return jsonEncode(res);
        },
      );
    } catch (exception, stacktrace) {
      if (kDebugMode) print(stacktrace);
      rethrow;
    }
  }
}
