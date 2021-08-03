import 'package:injector/injector.dart';
import 'package:refactory_flutter_test/app/repositories/api/user_api_repository.dart';
import 'package:refactory_flutter_test/use_cases/user/get_users.dart';

class UseCaseModule {
  static void init(Injector injector) {
    injector.registerDependency<GetUsersUseCase>(() {
      return GetUsersUseCase(injector.get<UserApiRepository>());
    });
  }
}
