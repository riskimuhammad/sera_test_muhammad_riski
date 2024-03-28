import 'package:test_muhammad_riski/data/providers/local/model/local_model.dart';
import 'package:test_muhammad_riski/data/providers/local/model/local_result.dart';

abstract class BoxContract {
  Future<String> sessionBox({required LocalModel method});
  late LocalResult unknownException;
}
