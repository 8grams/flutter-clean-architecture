import 'package:refactory_flutter_test/app/infrastructures/endpoints.dart';
import 'package:refactory_flutter_test/data/infrastructures/api_service_interface.dart';
import 'package:refactory_flutter_test/data/persistences/mappers/user_mapper.dart';
import 'package:refactory_flutter_test/data/persistences/repositories/contracts/user_repository.dart';
import 'package:refactory_flutter_test/domains/entities/user.dart';

class UserApiRepository implements UserRepository {
  ApiServiceInterface _service;
  Endpoints _endpoints;
  UserMapper _mapper;

  UserApiRepository(ApiServiceInterface service, Endpoints endpoints, UserMapper mapper) {
    this._service = service;
    this._endpoints = endpoints;
    this._mapper = mapper;
  }

  @override
  Future<List<User>> getAll(Map<String, String> params) async {
    dynamic resp;
    try {
      resp = await _service.invokeHttp(_endpoints.users(), RequestType.get, params: params);
    } catch (error) {
      rethrow;
    }
    return _mapper.getUsersConverter(resp);
  }
}
