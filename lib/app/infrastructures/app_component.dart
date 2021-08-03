import 'package:injector/injector.dart';
import 'package:egrams_flutter/app/infrastructures/di/controller_module.dart';
import 'package:egrams_flutter/app/infrastructures/di/mapper_module.dart';
import 'package:egrams_flutter/app/infrastructures/di/presenter_module.dart';
import 'package:egrams_flutter/app/infrastructures/di/repository_module.dart';
import 'package:egrams_flutter/app/infrastructures/di/root_module.dart';
import 'package:egrams_flutter/app/infrastructures/di/usecase_module.dart';

class AppComponent {
  static void init() {
    Injector injector = getInjector();
    RootModule.init(injector);
    MapperModule.init(injector);
    RepositoryModule.init(injector);
    UseCaseModule.init(injector);
    PresenterModule.init(injector);
    ControllerModule.init(injector);
  }

  static Injector getInjector() {
    return Injector.appInstance;
  }
}
