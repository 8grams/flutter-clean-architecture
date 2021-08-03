import 'package:injector/injector.dart';
import 'package:egrams_flutter/app/ui/pages/users/presenter.dart';
import 'package:egrams_flutter/use_cases/user/get_users.dart';

class PresenterModule {
  static void init(Injector injector) {
    injector.registerDependency<UsersPresenter>(() {
      return UsersPresenter(injector.get<GetUsersUseCase>());
    });
  }
}
