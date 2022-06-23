import 'package:architecture/Controllers/popular_product_controller.dart';
import 'package:architecture/data/Api/Api_Client.dart';
import 'package:architecture/data/Repository/popular_product_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> init()async {
  //Api Client
  Get.lazyPut(() => ApiClient(appBaseUrl: "wwww.google.com"));
// repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

//controller
 Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));


}