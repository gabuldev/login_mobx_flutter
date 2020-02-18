import 'package:mobx_login/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:mobx_login/app/app_widget.dart';
import 'package:mobx_login/app/modules/home/home_module.dart';
import 'package:mobx_login/app/modules/splash/splash_module.dart';


import 'modules/login/login_module.dart';
import 'shared/services/custom_dio/custom_dio.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CustomDio(isMock: true)),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/home', module: HomeModule()),
        Router('/login', module: LoginModule()),
        Router('/', module: SplashModule())
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
