


import 'package:dio/dio.dart';

class LoginRepository{

  final Dio client;

  LoginRepository(this.client);
  Future<bool> login({String email, String password}) async{
    var response = (await client.post("/login",data: {"email":email,"password":password})).data;
    
    if(response['email'] == email && response['password'] == password){
      return true;
    }else{
      throw "Email e/ou senha inválidos!";
    }
  }


}