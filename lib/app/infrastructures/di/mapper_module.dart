import 'package:injector/injector.dart';
import 'package:egrams_flutter/data/persistences/mappers/user_mapper.dart';

class MapperModule {
  static void init(Injector injector) {
    injector.registerSingleton(() => UserMapper());
  }
}
