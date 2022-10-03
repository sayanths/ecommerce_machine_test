import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ecommercetest/app/home_page/model/model.dart';

class ApiService {
  final dio = Dio();

  Future<FruitsModel?> getFruits() async {
   try {
     Response response = await dio
        .get("https://run.mocky.io/v3/f5dfb61d-cee5-4717-8359-c5e3869fa3ec");
    if (response.statusCode == 200) {
      return FruitsModel.fromJson(response.data);
    }
   }on DioError catch (e) {
      log(e.response!.data.toString());
    } catch (e) {
      log(e.toString());
    }
   return null;
    
  }
}

