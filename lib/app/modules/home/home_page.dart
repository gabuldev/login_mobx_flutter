import 'package:flutter/material.dart';
import 'package:mobx_login/app/modules/home/widgets/feed_card/feed_card_widget.dart';
import 'package:mobx_login/app/modules/home/widgets/search/search_widget.dart';
import 'package:mobx_login/app/modules/home/widgets/stories/stories_widget.dart';
import 'package:mobx_login/app/modules/home/widgets/top/top_widget.dart';
import 'package:mobx_login/app/shared/models/feed_model.dart';
import 'package:mobx_login/app/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ice,
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            TopWidget(),
            SearchWidget(),
            StoriesWidget(),
            FeedCardWidget(snapshot: FeedModel(timeAgo: "32 ago",name: "Shane Robertson",photo: "https://assets-cdn.kangaroo.com.br/images/maldivas/mercure-maldives-kooddoo%20(1).jpg",profilePhoto: "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"),),
            SizedBox(height: 80,)
          ],
        ),
      ),
    );
  }
}
