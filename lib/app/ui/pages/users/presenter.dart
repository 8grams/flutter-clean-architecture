import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:egrams_flutter/domains/entities/user.dart';
import 'package:egrams_flutter/use_cases/user/get_users.dart';

class UsersPresenter extends Presenter {
  GetUsersUseCase _useCase;

  Function getUsersOnNext;
  Function getUsersOnComplete;
  Function getUsersOnError;

  UsersPresenter(this._useCase);

  void getUserList({Map<String, String> params = const {}}) {
    _useCase.execute(_GetUsersObserver(this), params);
  }

  @override
  void dispose() {
    _useCase.dispose();
  }
}

class _GetUsersObserver implements Observer<List<User>> {
  UsersPresenter _presenter;

  _GetUsersObserver(this._presenter);

  void onNext(List<User> users) {
    _presenter.getUsersOnNext(users);
  }

  void onComplete() {
    _presenter.getUsersOnComplete();
  }

  void onError(e) {
    _presenter.getUsersOnError(e);
  }
}
