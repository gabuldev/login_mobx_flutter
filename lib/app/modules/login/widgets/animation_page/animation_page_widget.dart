import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_login/app/modules/login/widgets/animation_page/animation_page_controller.dart';
import 'package:mobx_login/app/modules/login/widgets/intro_container/intro_container_widget.dart';
import 'package:mobx_login/app/modules/login/widgets/second_container/second_container_widget.dart';

class AnimationPageWidget extends StatefulWidget {
  @override
  _AnimationPageWidgetState createState() => _AnimationPageWidgetState();
}

class _AnimationPageWidgetState extends State<AnimationPageWidget>
    with SingleTickerProviderStateMixin {
  var controller = AnimationPageController();

  AnimationController animation;
  Animation percentHeight;

  ReactionDisposer _disposer;

  void initAnimation() {
    animation =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    percentHeight = Tween(begin: .9, end: 0.3).animate(animation);
  }

  @override
  void initState() {
    initAnimation();
    _disposer = reaction((_) => controller.isAnimation, (value) {
      if (value) {
        animation.forward();
      } else {
        if (animation.isCompleted) {
          animation.reverse();
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    animation.dispose();
    _disposer.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          SecondContainerWidget(),
          AnimatedBuilder(
              animation: animation,
              child: IntroContainerWidget(),
              builder: (context, child) {
                return Container(
                  height:
                      MediaQuery.of(context).size.height * percentHeight.value,
                  child: child,
                );
              }),
          Observer(
              builder: (_) => controller.isAnimation
                  ? Container(
                      width: 0,
                      height: 0,
                    )
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: FlatButton(
                              onPressed: controller.clicked,
                              child: Text("Login To Your Account"))),
                    ))
        ],
      ),
    );
  }
}
