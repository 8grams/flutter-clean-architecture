import 'package:injector/injector.dart';
import 'package:egrams_flutter/app/infrastructures/endpoints.dart';
import 'package:egrams_flutter/app/infrastructures/persistences/api_service.dart';
import 'package:egrams_flutter/app/repositories/api/user_api_repository.dart';
import 'package:egrams_flutter/data/persistences/mappers/user_mapper.dart';

class RepositoryModule {
  static init(Injector injector) {
    injector.registerDependency<UserApiRepository>(() {
      return UserApiRepository(injector.get<ApiService>(), injector.get<Endpoints>(), injector.get<UserMapper>());
    });
  }
}
