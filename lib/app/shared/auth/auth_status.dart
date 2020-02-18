import 'package:flutter_modular/flutter_modular.dart';

enum AuthStatus{logged,disconnected}


extension AuthStatusExt on AuthStatus{

   get router {
    switch (this) {
      case AuthStatus.logged:{
        Modular.to.pushReplacementNamed("/home");
        break;
      }
      case AuthStatus.disconnected:{
        Modular.to.pushReplacementNamed("/login");
        break;
      }
    }
  }
}