import 'package:mobx_login/app/modules/login/widgets/animation_page/animation_page_controller.dart';
import 'package:mobx_login/app/modules/login/widgets/text_field/text_field_controller.dart';
import 'package:mobx_login/app/modules/login/login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_login/app/modules/login/login_page.dart';
import 'package:mobx_login/app/modules/login/login_repository.dart';
import 'package:mobx_login/app/shared/services/custom_dio/custom_dio.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AnimationPageController()),
        Bind((i) => TextFieldController()),
        Bind((i) => LoginRepository(i.get<CustomDio>())),
        Bind((i) => LoginController(i.get<LoginRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
