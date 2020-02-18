import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_login/app/modules/login/widgets/form_login/form_login_widget.dart';
import 'package:mobx_login/app/shared/auth/auth_status.dart';

import '../../../../app_controller.dart';
import '../../../../app_module.dart';
import '../../login_controller.dart';
import '../../login_module.dart';
import '../../login_status.dart';

class SecondContainerWidget extends StatefulWidget {
  @override
  _SecondContainerWidgetState createState() => _SecondContainerWidgetState();
}

class _SecondContainerWidgetState extends State<SecondContainerWidget> {

  var controller = LoginModule.to.get<LoginController>();
  ReactionDisposer _reaction;

  @override
  void initState() {
    _reaction = reaction((_) => controller.status, (value){
      if(value == LoginStatus.success){
        AppModule.to.get<AppController>().changeStatus(AuthStatus.logged);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _reaction.call();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FormLoginWidget(
            onSuccess: controller.login,
          ),
          Observer(
            builder: (_){
              if(controller.status == LoginStatus.loading){
                return CircularProgressIndicator();
              }else if(controller.status == LoginStatus.success){
                return Text("Logado com sucesso");
              }
              else if (controller.status == LoginStatus.error){
                return Text("${controller.status.getMessage}");
              }
              else return Container();
            },
          )
        ],
      ),
    );
  }
}
