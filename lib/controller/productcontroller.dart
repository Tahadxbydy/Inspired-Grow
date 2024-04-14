import 'package:baladisap/model/items_model.dart';
import 'package:baladisap/services/api_services.dart';
import 'package:get/get.dart';

class Productscontroller extends GetxController {
  var productlist = Future<Welcome>[].obs;
  void fetchproduct() async {
    var product = api_Services.fetchproduct();
    if (product != null) {
      productlist.value = product;
    }
  }
}
