import 'package:injector/injector.dart';
import 'package:refactory_flutter_test/data/persistences/mappers/user_mapper.dart';

class MapperModule {
  static void init(Injector injector) {
    injector.registerSingleton(() => UserMapper());
  }
}
