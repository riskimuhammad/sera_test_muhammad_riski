import '../../data/models/session/session_model.dart';
import '../../data/providers/local/model/local_result.dart';

abstract class LocalRepository {
  Future<LocalResult> token(SessionModel model);
  Future<LocalResult> session(SessionModel model);
  Future<LocalResult> deleteToken();
  Future<LocalResult> deleteSession();
  Future<LocalResult> getToken();
}
