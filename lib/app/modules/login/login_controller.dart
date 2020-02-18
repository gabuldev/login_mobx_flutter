import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_login/app/modules/login/login_repository.dart';

import 'login_status.dart';
import 'models/login_model.dart';

part 'login_controller.g.dart';

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {
  final LoginRepository repository;
  _LoginBase(this.repository);

  @observable
  LoginStatus status = LoginStatus.none;

  @action
  Future login(LoginModel model) async {
    try {
      status = LoginStatus.loading;
      await repository.login(email: model.email, password: model.password);
      status = LoginStatus.success; 
    } on  DioError catch (e) {
      status = LoginStatus.error;
      status.setMessage = e.error.toString();
    }
  }
}
