import 'dart:ffi';

import 'package:architecture/data/Repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<dynamic>_popularProductList = [];
  List<dynamic> get popularProductList =>_popularProductList;


Future<Response> getPopularProductList()async{
 Response response = await popularProductRepo.getPopularProductList();
  if(response.statusCode == 200){
    _popularProductList=[];
    //  _popularProductList.addAll(iterable);
    update();
    return response;


  }else{
return response;
  }

}
}