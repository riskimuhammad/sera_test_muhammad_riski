import 'package:test_muhammad_riski/data/providers/local/model/local_model.dart';
import 'package:test_muhammad_riski/data/providers/local/model/local_result.dart';

abstract class Box {
  Future<LocalResult> callBox({required LocalModel method});
}
