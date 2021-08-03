import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:refactory_flutter_test/app/ui/pages/pages.dart';

class HomeController extends Controller {
  @override
  void initListeners() {}

  void goToUsers() {
    Navigator.pushReplacementNamed(getContext(), Pages.users);
  }
}
