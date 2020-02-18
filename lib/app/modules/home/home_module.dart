import 'package:mobx_login/app/modules/home/widgets/feed_card/feed_card_controller.dart';
import 'package:mobx_login/app/modules/home/widgets/stories/stories_controller.dart';
import 'package:mobx_login/app/modules/home/widgets/search/search_controller.dart';
import 'package:mobx_login/app/modules/home/widgets/top/top_controller.dart';
import 'package:mobx_login/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_login/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FeedCardController()),
        Bind((i) => StoriesController()),
        Bind((i) => SearchController()),
        Bind((i) => TopController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
