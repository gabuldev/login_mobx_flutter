import 'package:flutter/material.dart';
import 'package:mobx_login/app/theme/app_colors.dart';

class TopWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      left: true,
      right: true,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text.rich(TextSpan(text: "Hello,", style: TextStyle(fontSize: 20,color: Colors.grey), children: [
              TextSpan(
                  text: "\nAlvorado!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.black))
            ])),

            CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.pink,
              backgroundImage: AssetImage("assets/images/photo_profile.png"),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(130);
}
