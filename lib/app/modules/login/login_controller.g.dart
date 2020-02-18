// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginBase, Store {
  final _$statusAtom = Atom(name: '_LoginBase.status');

  @override
  LoginStatus get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(LoginStatus value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }

  final _$loginAsyncAction = AsyncAction('login');

  @override
  Future<dynamic> login(LoginModel model) {
    return _$loginAsyncAction.run(() => super.login(model));
  }

  @override
  String toString() {
    final string = 'status: ${status.toString()}';
    return '{$string}';
  }
}
