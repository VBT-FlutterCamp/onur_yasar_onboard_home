import 'package:flutter_onboard_homeview/feature/home/model/home_model.dart';
import 'package:http/http.dart' as http;

class HomeService {
  Future<List<HomeModel>> getHome() async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/comments"),
    );

    if (response.statusCode == 200) {
      return homeModelFromJson(response.body);
    } else {
      throw Exception("Veriler gelmedi");
    }
  }
}
