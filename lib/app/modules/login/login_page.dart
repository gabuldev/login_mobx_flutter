import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_login/app/app_controller.dart';
import 'package:mobx_login/app/app_module.dart';
import 'package:mobx_login/app/modules/login/login_controller.dart';
import 'package:mobx_login/app/modules/login/login_module.dart';
import 'package:mobx_login/app/modules/login/login_status.dart';
import 'package:mobx_login/app/modules/login/widgets/animation_page/animation_page_widget.dart';
import 'package:mobx_login/app/modules/login/widgets/form_login/form_login_widget.dart';
import 'package:mobx_login/app/shared/auth/auth_status.dart';


class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return AnimationPageWidget();
  }
}
