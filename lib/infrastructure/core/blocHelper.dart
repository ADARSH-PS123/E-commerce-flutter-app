import 'package:ecommerce/domain/iapp/productEntity.dart';

List<Product> filterProduct(List<Product> products,String productName){
  List<Product> result = [];
  products.forEach((element) { 
    if(element.productCategory.getOrCrash().trim().toLowerCase() == productName.trim().toLowerCase()){
      result.add(element);
    }
    
  });
  return result;
}