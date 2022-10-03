import 'package:dio/dio.dart';
import 'package:ecommercetest/app/home_page/model/model.dart';

// class ServiceApi {
//   final dio = Dio(BaseOptions());
//   Future<FruitsModel?> getAPI() async {
//     try {
//       Response response = await dio.get("https://run.mocky.io/v3/f5dfb61d-cee5-4717-8359-c5e3869fa3ec");
//       if (response.statusCode == 200) {
//         return FruitsModel.fromJson(response.data);
//       } else {
//         return null;
//       }
//     } catch (e) {
//       print(e.toString());
//     }
//     return null;
//   }
// }
class DioService {
  Future<dynamic> getMethod({required String url}) async {
    return await Dio().get(url);
  }
}