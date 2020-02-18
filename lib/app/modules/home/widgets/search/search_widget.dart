import 'package:flutter/material.dart';
import 'package:mobx_login/app/theme/app_colors.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
             BoxShadow(
        color: Colors.grey.withOpacity(0.3),
        spreadRadius: 0.1,
        blurRadius: 10,
        offset: Offset(0, 5), // changes position of shadow
      ),
          ]
        ),

        child: TextField(
                cursorColor: AppColors.pink,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 0,bottom: 15),
                  hasFloatingPlaceholder: false,
                  labelText: "Search Friend",
                  labelStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      radius: 15,
                      child: Icon(Icons.search,color: Colors.white,size: 20,),
                      backgroundColor: AppColors.pink,
                      ),
                  )
                ),
              ),
      ),
    );
  }
}
