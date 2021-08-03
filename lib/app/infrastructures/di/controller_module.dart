import 'package:injector/injector.dart';
import 'package:egrams_flutter/app/ui/pages/home/controller.dart';
import 'package:egrams_flutter/app/ui/pages/users/controller.dart';
import 'package:egrams_flutter/app/ui/pages/users/presenter.dart';

class ControllerModule {
  static void init(Injector injector) {
    injector.registerDependency<HomeController>(() {
      return HomeController();
    });

    injector.registerDependency<UsersController>(() {
      return UsersController(injector.get<UsersPresenter>());
    });
  }
}
