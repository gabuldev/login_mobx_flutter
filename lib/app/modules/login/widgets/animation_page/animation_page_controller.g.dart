// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animation_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AnimationPageController on _AnimationPageBase, Store {
  final _$isAnimationAtom = Atom(name: '_AnimationPageBase.isAnimation');

  @override
  bool get isAnimation {
    _$isAnimationAtom.context.enforceReadPolicy(_$isAnimationAtom);
    _$isAnimationAtom.reportObserved();
    return super.isAnimation;
  }

  @override
  set isAnimation(bool value) {
    _$isAnimationAtom.context.conditionallyRunInAction(() {
      super.isAnimation = value;
      _$isAnimationAtom.reportChanged();
    }, _$isAnimationAtom, name: '${_$isAnimationAtom.name}_set');
  }

  final _$_AnimationPageBaseActionController =
      ActionController(name: '_AnimationPageBase');

  @override
  void clicked() {
    final _$actionInfo = _$_AnimationPageBaseActionController.startAction();
    try {
      return super.clicked();
    } finally {
      _$_AnimationPageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'isAnimation: ${isAnimation.toString()}';
    return '{$string}';
  }
}
