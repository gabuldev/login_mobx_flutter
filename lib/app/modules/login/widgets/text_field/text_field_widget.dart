import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_login/app/modules/login/widgets/text_field/text_field_controller.dart';
import 'package:mobx_login/app/theme/app_colors.dart';

enum TextFieldType { email, password }

class TextFieldWidget extends StatelessWidget {
  final Function(dynamic value) onSaved;
  final Function(String value) validator;
  final String labelText;
  final TextFieldType type;
  final TextFieldController controller = TextFieldController();

  TextFieldWidget({Key key, this.onSaved, this.validator, this.labelText, this.type = TextFieldType.email})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Observer(builder: (_) => TextFormField(
          obscureText: type == TextFieldType.password ? controller.viewPassword : false,
          decoration: InputDecoration(
              hasFloatingPlaceholder: false,
              contentPadding: const EdgeInsets.only(left: 30, bottom: 20),
              labelText: labelText,
              filled: true,
              fillColor: AppColors.blueLight,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: AppColors.blueLight,width: 0)
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: AppColors.blueLight,width: 0)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: AppColors.blueLight,width: 0)
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: AppColors.blueLight,width: 0)
              ),
              suffixIcon: type == TextFieldType.password ?
                   IconButton(
                      icon: controller.viewPassword
                          ? Icon(Icons.visibility,color: Colors.black,)
                          : Icon(Icons.visibility_off,color: Colors.black,),
                      onPressed: controller.changeView ) : null) ,
          onSaved: onSaved,
          validator: validator)),
    );
  }
}
