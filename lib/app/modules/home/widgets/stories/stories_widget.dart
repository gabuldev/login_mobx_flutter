import 'package:flutter/material.dart';
import 'package:mobx_login/app/theme/app_colors.dart';

class StoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 30,bottom: 30),
      child: SizedBox(
            width: size.width ,
            height: 80,
            child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) => Padding(
            padding: const EdgeInsets.all(4.0),
            child: CircleAvatar(
                backgroundColor: index == 0 ? Colors.white : AppColors.pink,
                child: index == 0 ? Icon(Icons.add,color: Colors.grey,) : CircleAvatar(radius: 34,backgroundImage: NetworkImage("https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg"),),
                radius: 40,),
          )),
      ),
    );
  }
}
