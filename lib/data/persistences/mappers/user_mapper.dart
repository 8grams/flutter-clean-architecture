import 'package:egrams_flutter/domains/entities/user.dart';

class UserMapper {
  List<User> getUsersConverter(Map<String, dynamic> response) {
    List<User> users = [];
    var data = response['data'];

    for (var item in data) {
      users.add(User(id: item['id'], name: item['name'], email: item['email'], phone: item['phone']));
    }

    return users;
  }
}
