import 'package:flutter/cupertino.dart';

class FormController {
  var key = GlobalKey<FormState>();


  ///Valida as entradas do TextFormField
  ///
  ///validator: (value) => Alguma validação (true or false)
  bool validate() {
    final form = key.currentState;

    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
