import 'package:injector/injector.dart';
import 'package:refactory_flutter_test/app/ui/pages/users/presenter.dart';
import 'package:refactory_flutter_test/use_cases/user/get_users.dart';

class PresenterModule {
  static void init(Injector injector) {
    injector.registerDependency<UsersPresenter>(() {
      return UsersPresenter(injector.get<GetUsersUseCase>());
    });
  }
}
