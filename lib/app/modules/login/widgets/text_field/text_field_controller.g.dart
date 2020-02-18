// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_field_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TextFieldController on _TextFieldBase, Store {
  final _$viewPasswordAtom = Atom(name: '_TextFieldBase.viewPassword');

  @override
  bool get viewPassword {
    _$viewPasswordAtom.context.enforceReadPolicy(_$viewPasswordAtom);
    _$viewPasswordAtom.reportObserved();
    return super.viewPassword;
  }

  @override
  set viewPassword(bool value) {
    _$viewPasswordAtom.context.conditionallyRunInAction(() {
      super.viewPassword = value;
      _$viewPasswordAtom.reportChanged();
    }, _$viewPasswordAtom, name: '${_$viewPasswordAtom.name}_set');
  }

  final _$_TextFieldBaseActionController =
      ActionController(name: '_TextFieldBase');

  @override
  void changeView() {
    final _$actionInfo = _$_TextFieldBaseActionController.startAction();
    try {
      return super.changeView();
    } finally {
      _$_TextFieldBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'viewPassword: ${viewPassword.toString()}';
    return '{$string}';
  }
}
