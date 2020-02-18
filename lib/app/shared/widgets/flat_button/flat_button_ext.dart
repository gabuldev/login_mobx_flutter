import 'package:flutter/material.dart';


extension FlatButtonExt on FlatButton{

  Widget get extended => Row(children: <Widget>[Expanded(child: this,)],);
 

}