import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:refactory_flutter_test/data/persistences/repositories/contracts/user_repository.dart';
import 'package:refactory_flutter_test/domains/entities/user.dart';

// Declaring usecase of the entity
class GetUsersUseCase extends UseCase<List<User>, Map<String, String>> {
  UserRepository _repository;

  GetUsersUseCase(this._repository);

  @override
  Future<Stream<List<User>>> buildUseCaseStream(Map<String, String> params) async {
    final StreamController<List<User>> _controller = StreamController();    
    try {
      List<User> users = await _repository.getAll(params);
      _controller.add(users);
      _controller.close();
    } catch (e) {
      // print(e);
      _controller.addError(e);
    }
    return _controller.stream;
  }
}
