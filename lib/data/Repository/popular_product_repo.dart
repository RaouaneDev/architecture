import 'package:architecture/data/Api/Api_Client.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService{

  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

Future<Response> getPopularProductList()async {
  return apiClient.getData("https://wwww.google.com");
}

}