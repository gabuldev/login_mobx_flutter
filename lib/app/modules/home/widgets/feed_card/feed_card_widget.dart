import 'package:flutter/material.dart';
import 'package:mobx_login/app/shared/models/feed_model.dart';
import 'package:mobx_login/app/theme/app_colors.dart';

class FeedCardWidget extends StatelessWidget {
  final FeedModel snapshot;

  const FeedCardWidget({Key key, @required this.snapshot}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.7,
      child: AspectRatio(
        aspectRatio: 8 / 10,
        child: Container(
          decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20)),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(snapshot.photo),fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(snapshot.profilePhoto),
                        backgroundColor: AppColors.pink,
                      ),
                      title: Text(snapshot.name),
                      subtitle: Text(snapshot.timeAgo),
                      trailing: IconButton(icon: Icon(Icons.add), onPressed: (){}),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
