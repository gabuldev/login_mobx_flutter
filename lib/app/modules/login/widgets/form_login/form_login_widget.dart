import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:mobx_login/app/modules/login/models/login_model.dart';
import 'package:mobx_login/app/modules/login/widgets/text_field/text_field_widget.dart';
import 'package:mobx_login/app/shared/utils/form_controller.dart';
import 'package:mobx_login/app/theme/app_colors.dart';
import '../../../../shared/widgets/extensions.dart';

class FormLoginWidget extends StatelessWidget {
  final formController = FormController();
  var loginModel = LoginModel();
  final Function(LoginModel data) onSuccess;

  FormLoginWidget({Key key, this.onSuccess}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Form(
          key: formController.key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFieldWidget(
                  labelText: "Email",
                onSaved: (value) => loginModel.email  = value,
                validator: (value) => EmailValidator.validate(value) ? null : "Email inválido",
              ), 
              TextFieldWidget(
                  type: TextFieldType.password,
                  labelText: "Password",
                onSaved: (value) => loginModel.password = value,
                validator: (value) => value.length >= 6 ? null : " A senha deve conter no mínimo 6 caracteres",
              ),
              FlatButton(
                color: AppColors.blue,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                onPressed: (){
                if(formController.validate()){
                  onSuccess(loginModel);
                }
              },child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text("Log In"),
              )).extended
              ],
          )),
    );
  }
}
