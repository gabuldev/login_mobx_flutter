// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppBase, Store {
  final _$authStatusAtom = Atom(name: '_AppBase.authStatus');

  @override
  AuthStatus get authStatus {
    _$authStatusAtom.context.enforceReadPolicy(_$authStatusAtom);
    _$authStatusAtom.reportObserved();
    return super.authStatus;
  }

  @override
  set authStatus(AuthStatus value) {
    _$authStatusAtom.context.conditionallyRunInAction(() {
      super.authStatus = value;
      _$authStatusAtom.reportChanged();
    }, _$authStatusAtom, name: '${_$authStatusAtom.name}_set');
  }

  final _$_AppBaseActionController = ActionController(name: '_AppBase');

  @override
  void changeStatus(AuthStatus status) {
    final _$actionInfo = _$_AppBaseActionController.startAction();
    try {
      return super.changeStatus(status);
    } finally {
      _$_AppBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'authStatus: ${authStatus.toString()}';
    return '{$string}';
  }
}
