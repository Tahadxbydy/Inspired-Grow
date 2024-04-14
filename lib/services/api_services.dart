import 'package:baladisap/model/items_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class api_Services {
  static var client = http.Client();

  static Future<Welcome?> fetchproduct() async {
    var response =
        await client.get(Uri.parse('http://13.233.206.176:4400/inventory'));

    if (response.statusCode == 200) {
      final jsonstring = response.body;
      return welcomeFromJson(jsonstring);
    } else(error) {
      print(error);
      return null;
    };
  }
}
