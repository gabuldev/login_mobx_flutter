import 'package:mobx/mobx.dart';

import 'shared/auth/auth_status.dart';


part 'app_controller.g.dart';

class AppController = _AppBase with _$AppController;

abstract class _AppBase with Store {
 
 @observable
 AuthStatus authStatus;

 @action
 void changeStatus(AuthStatus status) => authStatus = status;

}
