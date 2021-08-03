import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:egrams_flutter/app/infrastructures/app_component.dart';
import 'package:egrams_flutter/app/ui/pages/users/controller.dart';

class UsersPage extends View {
  UsersPage({Key key}) : super(key: key);
  @override
  _UsersPageState createState() => new _UsersPageState(AppComponent.getInjector().get<UsersController>());
}

class _UsersPageState extends ViewState<UsersPage, UsersController> {
  _UsersPageState(UsersController controller) : super(controller);

  @override
  Widget get view => ControlledWidgetBuilder<UsersController>(builder: (context, controller) {
        return Scaffold(
          key: globalKey,
          body: ListView.builder(
            itemCount: controller.users.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(controller.users[index].name + " - " + controller.users[index].email));
            },
          ),
        );
      });
}
