import 'package:egrams_flutter/domains/entities/user.dart';

abstract class UserRepository {
  Future<List<User>> getAll(Map<String, String> params);
}
