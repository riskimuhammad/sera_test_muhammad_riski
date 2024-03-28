import '../../data/models/session/session_model.dart';
import '../../data/providers/local/model/local_result.dart';

abstract class LocalRepository {
  Future<LocalResult> session(SessionModel model);
}
