

import 'package:dio/native_imp.dart';
import 'package:dio_interceptors/dio_interceptors.dart';

import '../../constants.dart';
import 'mock_data.dart';

class CustomDio extends DioForNative{

  final bool isMock;

  CustomDio({this.isMock = false}){

    options.baseUrl = BASE_URL;

    if(isMock){
      interceptors.add(InterceptorMock(mockData));
    }

  }



}