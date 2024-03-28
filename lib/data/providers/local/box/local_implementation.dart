import 'package:flutter/foundation.dart';
import 'package:test_muhammad_riski/data/providers/local/model/local_model.dart';
import 'package:test_muhammad_riski/data/providers/local/box/local_contract.dart';
import 'package:get_storage/get_storage.dart';

class BoxContractImplementation extends BoxContract {
  @override
  Future<String> sessionBox({required LocalModel method}) async {
    final box = GetStorage('box-test-riski');
    try {
      return await method.when(
        insertSession: (localSessionParameter) {
          box.write('token', localSessionParameter.access_token);
          return 'token saved';
        },
        getSession: (localSessionParameter) async {
          final res = await box.read('token') as String;
          return res;
        },
      );
    } catch (exception, stacktrace) {
      if (kDebugMode) print(stacktrace);
      rethrow;
    }
  }
}
