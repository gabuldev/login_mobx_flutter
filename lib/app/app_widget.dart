import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';


import 'app_controller.dart';
import 'app_module.dart';
import 'shared/auth/auth_status.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {

   var controller = AppModule.to.get<AppController>();
  ReactionDisposer _reaction;
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 20)).then((value) => controller.changeStatus(AuthStatus.disconnected));
   _reaction = reaction<AuthStatus>((_) => controller.authStatus, (value) => value.router);
    super.initState();
  }

  @override
  void dispose() {
   _reaction.call();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
