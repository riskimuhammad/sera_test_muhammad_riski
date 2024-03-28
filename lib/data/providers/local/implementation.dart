import 'package:test_muhammad_riski/data/providers/local/contract.dart';
import 'package:test_muhammad_riski/data/providers/local/model/local_model.dart';
import 'package:test_muhammad_riski/data/providers/local/model/local_result.dart';

import 'box/local_contract.dart';

class BoxImplementation extends Box {
  BoxContract boxContract;
  BoxImplementation(this.boxContract);
  @override
  Future<LocalResult> callBox({required LocalModel method}) async {
    try {
      final res = await boxContract.sessionBox(method: method);
      return LocalResult.success(data: res);
    } catch (exception) {
      return boxContract.unknownException;
    }
  }
}
