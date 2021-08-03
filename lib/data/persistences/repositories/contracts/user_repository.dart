import 'package:refactory_flutter_test/domains/entities/user.dart';

abstract class UserRepository {
  Future<List<User>> getAll(Map<String, String> params);
}